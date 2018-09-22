class AlbumController < ApplicationController
  def index
  	@albums = Album.order(:created_at).page(params[:page])
  end

  def new
  	@albums = Album.new
  end

  def edit
  	@albums = Album.find(params[:id])
  end
end
