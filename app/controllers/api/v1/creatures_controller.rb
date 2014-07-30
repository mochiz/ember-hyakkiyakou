class Api::V1::CreaturesController < ApplicationController
  respond_to :json

  def index
    respond_with Creature.all
  end

  def show
    respond_with creature
  end

  def create
    respond_with :api, :v1, Creature.create(creature_params)
  end

  def update
    respond_with creature.update(creature_params)
  end

  def destroy
    respond_with creature.destroy
  end

  private

  def creature
    Creature.find(params[:id])
  end

  def creature_params
    params.require(:creature).permit(:name, :kana, :wiki_url, :description, :avatar, :notes)
  end
end
