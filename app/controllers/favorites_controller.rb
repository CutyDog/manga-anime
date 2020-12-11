class FavoritesController < ApplicationController

  def create
    @art_craft = ArtCraft.find(params[:art_craft_id])
    @favorite_art_craft = @art_craft.favorite_art_crafts.new
    @favorite_art_craft.user = current_user

    @favorite_art_craft.save
    redirect_to art_craft_path(@favorite_art_craft.art_craft), notice: 'favorite_art_craft was successfully registrated.'
  end

  def destroy
    @art_craft = ArtCraft.find(params[:art_craft_id])
    @favorite_art_craft = @art_craft.favorite_art_crafts.find(params[:id])
    @favorite_art_craft.destroy
    redirect_to art_craft_path(@art_craft), notice: 'favorite_art_craft was successfully destroyed.'
  end
end