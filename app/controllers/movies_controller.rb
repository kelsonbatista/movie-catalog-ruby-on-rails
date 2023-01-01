class MoviesController < ApplicationController
  before_action :movie_find, only: [:show, :destroy, :edit, :update]
  
  def index
    # @movies = Movie.all
    # @movies_acao = Movie.where(genre_id: 10)
    # @movies_romance = Movie.where(genre_id: 1)
  end

  def show

  end
  
  def destroy
    if @movie.destroy
      return redirect_to root_path
    end
    render show
  end

  def edit

  end

  def update
    if @movie.update(movie_params)
      return redirect_to movie_path(@movie.id)
    end
    render edit
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      return redirect_to movie_path(@movie.id)
    end
    render new
  end

  def publish
    if @movie.draft?
      @movie.published!
      return redirect_to movie_path(@movie.id)
    else
      @movie.draft!
      return redirect_to movie_path(@movie.id)
    end
  end

  def release
    if @movie.not_released?
      @movie.released!
      return redirect_to movie_path(@movie.id)
    else
      @movie.not_release!
      return redirect_to movie_path(@movie.id)
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :synopsis, :country_id, :duration, :director_id, :genre_id, :release, :status, :image)
  end

  def movie_find
    @movie = Movie.find(params[:id])
  end
end