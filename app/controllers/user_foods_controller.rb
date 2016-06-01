class UserFoodsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  
  def middle_item_select
    if request.xhr?
      render partial: 'shared/middle_item_select', locals: {large_id: params[:large_id]}
    end
  end
  
  def small_item_select
    if request.xhr?
      render partial: 'shared/small_item_select', locals: {middle_id: params[:middle_id]}
    end
  end

  def create
    @user_food = current_user.user_foods.build(user_food_params)

    if @user_food.save
      flash[:success] = "UserFood created!"
      redirect_to root_url
    else
      @user_foods = UserFood.all
      flash.now[:alert] = "UserFood can't created!"
      render 'static_pages/home'
    end
  end
  
  private
  def user_food_params
    params.require(:user_food).permit(:large_id, :middle_id, :small_id, :weight)
  end
end
