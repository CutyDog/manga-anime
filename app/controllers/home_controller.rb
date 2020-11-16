class HomeController < ApplicationController
  def top
    @comics = ArtCraft.comics.limit(5)
    @animes = ArtCraft.animes.limit(5)
  end
  

end
