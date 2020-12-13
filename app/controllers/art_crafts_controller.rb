class ArtCraftsController < ApplicationController
  def show
    @art_craft = ArtCraft.find(params[:id])
    @favorite_art_craft = @art_craft.favorite_art_crafts.find_by(user: current_user)
    @comment = Comment.new
    @comments = @art_craft.comments.order(id: :desc).page(params[:page]).per(10)
  end
  
  def search
    @keyword = params[:keyword]
    @art_crafts = if @keyword
                    ArtCraft.where('title like ?', "%#{@keyword}%")
                  else
                    ArtCraft.all
                  end
  end
  
end
