class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def home
  end
  
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

      if @movie.save
        redirect_to @movie, notice: 'Movie was successfully created.'
      else
        render :new
      end
  end

  def update
      if @movie.update(show_params)
        redirect_to @movie, notice: 'Movie was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @movie.destroy
      redirect_to movies_path, notice: 'Movie was successfully destroyed.'
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :format, :length, :release_year, :rating)
    end
end
