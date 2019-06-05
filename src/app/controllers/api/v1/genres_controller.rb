class Api::V1::GenresController < ApplicationController
  def index
    @genres = Genre.all
    p "aaaa"
    p @genres
    @genres
  end

  def create
    genre = Genre.new(genre_params)
    genre.save!
  end

private
  def form_params
    params.require(:genre).permit(:name)
  end
end
