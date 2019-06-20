class HomesController < ApplicationController
  def index
    @achievements = Achievement.all
  end



end
