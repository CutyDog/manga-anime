class FavoriteArtCraft < ApplicationRecord
  belongs_to :user
  belongs_to :art_craft
  has_many   :favorite_art_crafts, dependent: :destroy
  has_many   :favorite_users, through: :favorite_art_crafts, source: :user
end
