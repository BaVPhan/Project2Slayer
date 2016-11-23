class HerosController < ApplicationController
  # you can dry this section up with a before_action method
  # i.e. before_action :set_hero, except: [:index, :new, :create]
  # def set_hero
  #   Hero.find(params[:id])
  # end

  def index
    @heros = Hero.all
  end

  def new
    # nice and concise login check! love this style over the other
    redirect_to root_path unless @current_user
    @hero = Hero.new
  end

  def create
    @hero = Hero.create!(hero_params)
    redirect_to @hero
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update(hero_params)
    redirect_to @hero
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy
    redirect_to heros_path
  end

  private
  def hero_params
    params.require(:hero).permit(:name, :img_url, :weapon_strength)
  end


end
