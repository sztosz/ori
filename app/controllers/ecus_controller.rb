# == Schema Information
#
# Table name: ecus
#
#  id         :integer          not null, primary key
#  name       :string
#  engine_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EcusController < ApplicationController
  def index
    @engine = Engine.find(params[:engine_id])
    @ecus = @engine.ecus
  end

  def show
    @ecu = Ecu.find params[:id]
  end

  def new
    @ecu = Ecu.new(engine: Engine.find(params[:engine_id]))
    authorize @ecu
  end

  def create
    @ecu = Ecu.new ecu_params
    authorize @ecu
    if @ecu.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @ecu = Ecu.find params[:id]
    authorize @ecu
  end

  def update
    @ecu = Ecu.find params[:id]
    authorize @ecu
    if @ecu.update ecu_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @ecu = Ecu.find params[:id]
    authorize @ecu
    @ecu.destroy
    redirect_to brand_body_engine_ecus_path
  end

  def ecu_params
    params.require(:ecu).permit(:name).merge(engine_id: params[:engine_id])
  end
end
