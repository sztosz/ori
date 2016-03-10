# == Schema Information
#
# Table name: engines
#
#  id         :integer          not null, primary key
#  name       :string
#  body_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EnginesController < ApplicationController
  def index
    @body = Body.find(params[:body_id])
    @engines = @body.engines
  end

  def show
    @engine = Engine.find params[:id]
  end

  def new
    @engine = Engine.new(body: Body.find(params[:body_id]))
    authorize @engine
  end

  def create
    @engine = Engine.new engine_params
    authorize @engine
    if @engine.save!
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @engine = Engine.find params[:id]
    authorize @engine
  end

  def update
    @engine = Engine.find params[:id]
    authorize @engine
    if @engine.update engine_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @engine = Engine.find params[:id]
    authorize @engine
    @engine.destroy
    redirect_to brand_body_engines_path
  end

  def engine_params
    params.require(:engine).permit(:name).merge(body_id: params[:body_id])
  end
end
