class HerosController < ApplicationController

  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.create!(hero_params)

    redirect_to @hero
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
