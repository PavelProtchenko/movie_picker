class MoviesController < ApplicationController

  before_action :set_movie, only: [:show, :destroy, :edit, :update]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created'
    else
      render :new, flash[:error] = 'Movie was not created'
    end
  end
  
  def show
  end

  private
  
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :director, :year, :description)
    end
end
