class Api::V1::BreedsController < ApplicationController

  def index
    render json: BreedSerializer.new(Breed.all)
  end

  def show
    render json: BreedSerializer.new(Breed.find(params[:id]))
  end
end
