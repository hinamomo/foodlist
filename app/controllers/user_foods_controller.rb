class UserFoodsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def create
    @user_food = current_user.user_foods.build(user_food_params)
    if @user_food.save
      flash[:success] = "UserFood created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  private
  def user_food_params
    params.require(:user_food).permit(:large_id)
  end
end
