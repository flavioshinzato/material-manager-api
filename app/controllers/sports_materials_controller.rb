class SportsMaterialsController < ApplicationController
  # before_action :authenticate_user_from_token!, only: [:create, :destroy, :edit]
  before_action :find_material, only: [:destroy, :edit]

  def index
    materials = SportsMaterial.all
    render json: materials, status: :ok  
  end

  def create
    material = SportsMaterial.new(material_params)
    if material.save
      render json: material, location: '', status: :created
    else
      render json: article.erros, status: :unprocessable_entity
    end
  end

  def update
    if @material.update_attributes(material_params)
      render json: @material, status: :ok
    else
      render json: @material.erros, status: :unprocessable_entity
    end

    render json: @material, location: '', status: :ok
  end

  def destroy
    @material.destroy

    render json: @material, status: :ok if @material.destroyed?
  end

  private

  def find_material
    @material = SportsMaterial.find(params[:id])
  end

  def material_params
    params.permit(:title, :description, :image, :price)
  end

end