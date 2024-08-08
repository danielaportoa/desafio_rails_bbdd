class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    pp @movie
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      redirect_to movies_index_path
    else
      render :new
    end
  end

private

  def movies_params
    params.require(:movie).permit(:title, :original_title, :director, :year, :country, :synopsis, :duration)
  end

  def new
    @movie = Movie.new
  end
end
