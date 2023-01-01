class HomeController < ApplicationController
  def index
    @movies = Movie.all
    @movies_acao = Movie.where(genre_id: 10)
    @movies_romance = Movie.where(genre_id: 1)
    @movies_comedia = Movie.where(genre_id: 4)
    @movies_documentario = Movie.where(genre_id: 7)
    @movies_terror = Movie.where(genre_id: 6)
    @movies_aventura = Movie.where(genre_id: 2)
    @movies_animacao = Movie.where(genre_id: 11)
    @all_movies = [@movies_acao, @movies_romance, @movies_comedia, @movies_documentario, @movies_terror, @movies_aventura, @movies_animacao]
  end
end