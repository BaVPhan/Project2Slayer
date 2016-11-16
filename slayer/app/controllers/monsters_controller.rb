class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def new

    @monster = Monster.new
  end

  def create

    @monster = Monster.create!(monster_params)
    redirect_to @monster
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @monster = @hero.monsters.update(monster_params)
    redirect_to hero_monster_path(@monster)
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to monsters_path
  end

  private
  def monster_params
    params.require(:monster).permit(:name, :img_url, :health, :habitat, :hero_id)
  end

end
