# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    redirect_to brand_bodies_path params[:id]
  end

  def new
    @brand = Brand.new
    authorize @brand
  end

  def create
    @brand = Brand.new brand_params
    authorize @brand
    if @brand.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @brand = Brand.find params[:id]
    authorize @brand
  end

  def update
    @brand = Brand.find params[:id]
    authorize @brand
    if @brand.update brand_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @brand = Brand.find params[:id]
    authorize @brand
    @brand.destroy
    redirect_to brands_path
  end

  def brand_params
    params.require(:brand).permit(:name)
  end
end
