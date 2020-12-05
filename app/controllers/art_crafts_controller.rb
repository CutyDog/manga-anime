class ArtCraftsController < ApplicationController
  def show
    @art_craft = ArtCraft.find(params[:id])
  end
  
  def search
    @keyword = params[:keyword].presence || nil
    @art_crafts = if @keyword.present?
                    ArtCraft.where('title like ?', "%#{@keyword}%")
                  else
                    ArtCraft.all
                  end
  end
end
