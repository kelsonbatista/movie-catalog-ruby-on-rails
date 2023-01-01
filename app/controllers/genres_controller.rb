class GenresController < ApplicationController
  before_action :genre_find, only: [:show, :destroy, :edit, :update]
  
  def index
    @genres = Genre.all
  end

  def show

  end
  
  def destroy
    if @genre.destroy
      return redirect_to genres_path
    end
    render show
  end

  def edit

  end

  def update
    if @genre.update(genre_params)
      return redirect_to genres_path
    end
    render edit
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash.notice = 'Gênero cadastrado com sucesso'
      return redirect_to new_genre_path
    end
    render new
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def genre_find
    @genre = Genre.find(params[:id])
  end
end