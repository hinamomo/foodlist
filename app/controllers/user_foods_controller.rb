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
    
    if params[:delete]
      current_user.user_foods.destroy_all
      @user_food = current_user.user_foods.build 
      @user_foods = current_user.user_foods.order(created_at: :desc) 
      render 'static_pages/home'
    else
      @user_food = current_user.user_foods.build(user_food_params)
  
      if @user_food.save
        flash[:success] = "UserFood created!"
        redirect_to root_url
      else
        @user_foods = current_user.user_foods.order(created_at: :desc)
        flash.now[:alert] = "UserFood can't created!"
        render 'static_pages/home'
      end
    end
  end
  
  def destroy
    @user_food = current_user.user_foods.find_by(id: params[:id])
    return redirect_to root_url if @user_food.nil?
    @user_food.destroy
    flash[:success] = "Foodlist deleted"
    redirect_to request.referrer || root_url
  end
  
  private
  def user_food_params
    params.require(:user_food).permit(:large_id, :middle_id, :small_id, :weight)
  end
end
