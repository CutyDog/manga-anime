class ArtCraftsController < ApplicationController
  def show
    @art_craft = ArtCraft.find(params[:id])
    @comment = Comment.new
    @comments = @art_craft.comments.order(id: :desc)
  end
end
