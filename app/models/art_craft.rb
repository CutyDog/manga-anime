class ArtCraft < ApplicationRecord
  enum category: { comics: 1, animes: 2 }
end
