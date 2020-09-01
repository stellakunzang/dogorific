class Api::V1::BreedsController < ApplicationController
  def index
    render json: BreedSerializer.new(Breed.all)
  end 
end
