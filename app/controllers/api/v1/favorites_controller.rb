class Api::V1::FavoritesController < ApplicationController

  def index
    render json: FavoriteSerializer.new(Favorite.all)
  end

  def show
    render json: FavoriteSerializer.new(Favorite.find(params[:id]))
  end
end
