class Admin::GenresController < ApplicationController
  def new

  end

  def index
    @genre = Genre.new

  end

  def create
    genre = Genre.new(genre.rarams)
    genre.save
    redirect_to admin_genres_path
  end

  def edit
  end

  def update
  end
end
