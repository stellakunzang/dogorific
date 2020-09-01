class BreedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :country, :description, :images
end 
