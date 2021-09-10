class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # comment && movie_id come from form params
    @bookmark = Bookmark.new(bookmark_params)

    # @movie = Movie.find(bookmark_params[:movie_id])
    # @bookmark.movie = @movie

    # list_id comes from url params (does not need to be in bookmark_params)
    @list = List.find(params[:list_id])
    # associate bookmark with list
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to list_path(@bookmark.list)
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
