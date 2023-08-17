class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @list = List.find(params[:list_id])
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list)
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def list_params
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
