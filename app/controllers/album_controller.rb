class AlbumController < ApplicationController
  def index
    if params[:search].present?
	    @albums = Album.text_search(params[:search]).page(params[:page])
    else
    	@albums = Album.all.order("created_at desc").page(params[:page])
    end
  end

  def new
  	@albums = Album.new
  end

  def edit
  	@albums = Album.find(params[:id])
  end
end
