class ActivitiesController < ApplicationController
  include RecommendRecipe
  
  def result
    foodlist = current_user.user_foods.order(created_at: :desc)
    attributes = {} 
    
    (1..9).each do |i|
      attributes["large#{i}_sum"] = 0
      attributes["large#{i}_flg"] = 0
    end
    attributes["sum_sum"] = 0.0
    
    #品目ポイント計算
    foodlist.each do |food|
      small = SmallItem.where(id: food.small_id)
      point = (food.weight.to_f / small[0].weight * small[0].point).round(2)
      
      attributes["large#{food.large_id}_sum"] += point
      attributes["sum_sum"] += point
    end
    
    attributes["sum_sum"] = attributes["sum_sum"].round(2)
    
    activity = Activity.where(old_id: current_user.old_id, 
                              sex_id: current_user.sex_id, 
                              activity_level: current_user.activity_level)
    
    #品目ポイント不足判定
    
    (1..9).each do |i|
      if attributes["large#{i}_sum"] < activity[0].send("large#{i}") then
        attributes["large#{i}_flg"] = 1
      end
    end
    
    #登録
    current_user.user_items.create(attributes)
    
    @user_item = current_user.user_items.order(created_at: :desc)
    
    current_user_standard = current_user.standard
    @standards = []
    @large_flg = []
    @large_sum = []
    (1..9).each do |i|
      @standards << current_user_standard[0].send("large#{i}") 
      @large_flg << @user_item[0].send("large#{i}_flg")
      @large_sum << @user_item[0].send("large#{i}_sum")
    end
    @standards << current_user_standard[0].sum
    @large_sum << @user_item[0].sum_sum

    #category_id取得
    @large = LargeItem.all
    @category_id = []
    
    # デバッグ
    debug = call(@large[0].large_val)
    logger.debug("debug--------------------------------")
    logger.debug(debug)
    
    # (0..8).each do |i|
    #   @category_id << call(@large[i].large_val)
    # end
  end
end
