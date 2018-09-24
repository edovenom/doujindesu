class GenresController < ApplicationController
  before_action :set_genre, only: [:destroy]


  # GET /genres
  # GET /genres.json
  def index
    @genres = Genre.all
  end

  # GET /genres/new
  def new
    @genre = Genre.new
  end

  # POST /genres
  # POST /genres.json
  def create
    @genre = Genre.new(genre_params)
    @genre.save

    respond_to do |format|
      format.js {@genre}
      format.html { redirect_to @genre, notice: 'Genre was successfully created.' }
    end
  end

  # DELETE /genres/1
  # DELETE /genres/1.json
  def destroy
    @genre.destroy
    redirect_to genres_url, notice: 'Genre was successfully destroyed.'
  end

  private
    
    def set_genre
      @genre = Genre.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_params
      params.require(:genre).permit(:genre)
    end
end
