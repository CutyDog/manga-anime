class ArtCraft < ApplicationRecord
  has_many :comments
  enum category: { comics: 1, animes: 2 }
end
