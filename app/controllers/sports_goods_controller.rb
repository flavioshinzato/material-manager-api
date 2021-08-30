class SportsGoodsController < ApplicationController
  before_action :authenticate_user_from_token!, only: [:create, :destroy, :edit]

  def index
    materials = SportsGoods.all
    respond_with material, location: ''
  end

  def create
  end

  def edit
  end

  def destroy
  end

end