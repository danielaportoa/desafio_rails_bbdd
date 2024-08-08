class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilm_params)

    if @documentaryfilm.save
      redirect_to documentaryfilms_index_path
    else
      render :new
    end
  end

private

  def documentaryfilm_params
    params.require(:documentaryfilm).permit(:title, :original_title, :director, :year, :country, :duration)
  end

  def new
    @documentaryfilm_params = Documentaryfilm.new
  end
end
