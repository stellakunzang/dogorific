class Api::V1::FavoritesController < ApplicationController

  def index
    render json: FavoriteSerializer.new(Favorite.all)
  end

  def show
    render json: FavoriteSerializer.new(Favorite.find(params[:id]))
  end

  def create
    favorite = Breed.find(params[:breed]).favorites.create
    if favorite.save
      render json: ConfirmationSerializer.new(successfully_created_message).info
    end
  end

  private

  def successfully_created_message
    "The breed was successfully added to the favorites list."
  end

  def successfully_deleted_message
    "The favorite was successfully deleted, and will now longer appear on the favorites list."
  end
end
