class BodiesController < ApplicationController
  def index
    @bodies = Brand.find(params[:brand_id]).bodies
  end

  def show
    @body = Body.find params[:id]
  end

  def new
    @body = Body.new
    authorize @body
  end

  def create
    @body = Body.new body_params
    authorize @body
    if @body.save!
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @body = Body.find params[:id]
    authorize @body
  end

  def update
    @body = Body.find params[:id]
    authorize @body
    if @body.update body_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @body = Body.find params[:id]
    authorize @body
    @body.destroy
    redirect_to brands_path
  end

  def body_params
    params.require(:body).permit(:name).merge(brand_id: params[:brand_id])
  end
end
