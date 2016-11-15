class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def new
    @hero = Hero.find(params[:hero_id])
    @monster = Monster.new
  end

  def create
    @hero = Hero.find(params[:hero_id])
    @monster = Monster.create!(monster_params)
    redirect_to @monster
  end

  def update
    @hero = Hero.find(params[:id])
    hero.update!(todo_params)
    redirect_to hero_path(@hero)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  private
  def monster_params
    params.require(:monster).permit(:name, :img_url, :health, :habitat, :hero_id)
  end

end
