class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :breed
end
