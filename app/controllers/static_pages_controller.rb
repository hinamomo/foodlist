class StaticPagesController < ApplicationController
  def home
    @user_food = current_user.user_foods.build if logged_in?
  end
end
