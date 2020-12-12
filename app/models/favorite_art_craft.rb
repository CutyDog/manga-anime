class FavoriteArtCraft < ApplicationRecord
  belongs_to :user
  belongs_to :art_craft
end
