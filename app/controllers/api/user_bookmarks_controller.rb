# controls current_user's bookmarks

class API::UserBookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bookmarks
  before_action :set_bookmark, only: [:show, :update, :destroy]

  def index
  end

  def create
    @bookmark = current_user.list_bookmarks.new(bookmark_params)

    if @bookmark.save
      render json: @bookmark
    else
      render json: @bookmark.errors.messages, status: 422
    end
  end

  def destroy
    @bookmark.destroy
    head :ok
  end

# PRIVATE METHODS
  private

    def set_bookmarks
      @bookmarks = current_user.bookmarks
    end

    def set_bookmark
      @bookmark = current_user.bookmarks.find_by(id: params[:id])
      if @bookmark.nil?
        render json: {message: "Cannot find '#{params[:id]}'"}, status: 400
      end
    end

    def bookmark_params
      params.require(:ListBookmark).permit(:list_id)
    end
end


