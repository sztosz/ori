# == Schema Information
#
# Table name: bodies
#
#  id         :integer          not null, primary key
#  name       :string
#  brand_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BodiesController < ApplicationController
  def index
    @brand = Brand.find(params[:brand_id])
    @bodies = @brand.bodies
  end

  def show
    redirect_to brand_body_engines_path params[:brand_id], params[:id]
  end

  def new
    @body = Body.new(brand: Brand.find(params[:brand_id]))
    authorize @body
  end

  def create
    @body = Body.new body_params
    authorize @body
    if @body.save
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
    redirect_to brand_bodies_path
  end

  def body_params
    params.require(:body).permit(:name).merge(brand_id: params[:brand_id])
  end
end
