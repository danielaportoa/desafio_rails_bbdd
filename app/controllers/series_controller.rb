class SeriesController < ApplicationController
  def index
    @serie = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)

    if @serie.save
      redirect_to series_index_path
    else
      render :new
    end
  end

private

  def serie_params
    params.require(:serie).permit(:title, :original_title, :season, :director, :year, :country, :duration)
  end

  def new
    @serie = Serie.new
  end
end
