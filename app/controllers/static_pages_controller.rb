class StaticPagesController < ApplicationController
  def home
    @user_food = current_user.user_foods.build if logged_in?
    @user_foods = current_user.user_foods.order(created_at: :desc)
  end
end
