class AlbumController < ApplicationController
  def index
    if params[:search].present?
	    @albums = Album.text_search(params[:search]).page(params[:page])
    else
    	@albums = Album.all.order("created_at desc").page(params[:page])
    end
  end

  def new
    if logged_in?
  	 @albums = Album.new
    else
      redirect_to login_path, notice: "You must be logged in to submit a new album"
    end
  end

  def create
    @albums = Album.new(allowed_params)
    @albums.user_id = current_user.id
    if @albums.save
      redirect_to root_path, notice: "Album successfully added"
    else
      redirect_to root_path, notice: "Album submission failed. Please try again"
    end
  end

  def edit
  	@albums = Album.find(params[:id])
  end

  private

  def allowed_params
    params.require(:album).permit(:title, :cover_link,:album_code, :preview_link, :artist)
  end
end
