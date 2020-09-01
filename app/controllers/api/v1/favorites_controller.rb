class Api::V1::FavoritesController < ApplicationController

  def index
    render json: FavoriteSerializer.new(Favorite.all)
  end
end
