class ArtCraftsController < ApplicationController
  def show
    @art_craft = ArtCraft.find(params[:id])
  end
end
