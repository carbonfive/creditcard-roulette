class GamesController < ApplicationController
  skip_authorization_check

  def new
    @game = Game.new
  end

  def create
    @game = Game.new params[:game]
    @game.user= current_user
    @game.save!
    redirect_to @game
  end

  def show
    @game = Game.find(params[:id])
  end
end
