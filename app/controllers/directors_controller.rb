class DirectorsController < ApplicationController
  before_action :director_find, only: [:show, :destroy, :edit, :update]
  
  def index
    @directors = Director.all
  end

  def show

  end
  
  def destroy
    if @director.destroy
      return redirect_to directors_path
    end
    render show
  end

  def edit

  end

  def update
    if @director.update(director_params)
      return redirect_to directors_path
    end
    render edit
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      flash.notice = 'Diretor(a) cadastrado com sucesso'
      return redirect_to new_director_path
    end
    render new
  end

  private

  def director_params
    params.require(:director).permit(:name, :birthdate, :country_id, :genre_id)
  end

  def director_find
    @director = Director.find(params[:id])
  end
end