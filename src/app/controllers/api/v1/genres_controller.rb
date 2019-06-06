class Api::V1::GenresController < ApplicationController
  def index
    @genres = Genre.all
    render json: { status: 200, data: @genres }
  end

  def create
    genre = Genre.new(genre_params)
    genre.save!
    render json: { status: 'SUCCESS', message: 'loaded posts', data: genre }
  end

private
  def form_params
    params.require(:genre).permit(:name)
  end
end
