class ArtCraft < ApplicationRecord
  has_many :comments
  has_many :favorite_art_crafts
  enum category: { comics: 1, animes: 2 }
  
  DISPLAY_CATEGORY = {
    comics: 'マンガ',
    animes: 'アニメ'
  }
  
  def display_category
    DISPLAY_CATEGORY[category.to_sym]
  end
  
end
