# == Schema Information
#
# Table name: dumps
#
#  id           :integer          not null, primary key
#  ecu_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  hw           :string
#  sw           :string
#  content      :integer          not null
#  content_size :integer
#

class DumpsController < ApplicationController
  def index
    @ecu = Ecu.find(params[:ecu_id])
    @dumps = @ecu.dumps
  end

  def show
    dump = Dump.find params[:id]
    send_data dump.content.file.read, filename: "#{dump.hw}-#{dump.sw}"
  end

  def new
    @dump = Dump.new(ecu: Ecu.find(params[:ecu_id]))
    authorize @dump
  end

  def create
    @dump = Dump.new dump_params
    authorize @dump
    if @dump.save!
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @dump = Dump.find params[:id]
    authorize @dump
  end

  def update
    @dump = Dump.find params[:id]
    authorize @dump
    if @dump.update dump_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @dump = Dump.find params[:id]
    authorize @dump
    @dump.destroy
    redirect_to brand_body_engine_ecu_dumps_path
  end

  def dump_params
    params.require(:dump).permit(:hw, :sw, :content).merge(ecu_id: params[:ecu_id])
  end
end
