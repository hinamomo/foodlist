class ActivitiesController < ApplicationController
  include RecommendRecipe
  
  def result
    foodlist = current_user.user_foods.order(created_at: :desc)
    large1_sum = 0
    large2_sum = 0
    large3_sum = 0
    large4_sum = 0
    large5_sum = 0
    large6_sum = 0
    large7_sum = 0
    large8_sum = 0
    large9_sum = 0
    sum_sum = 0
    
    large1_flg = 0
    large2_flg = 0
    large3_flg = 0
    large4_flg = 0
    large5_flg = 0
    large6_flg = 0
    large7_flg = 0
    large8_flg = 0
    large9_flg = 0
    
    #品目ポイント計算
    foodlist.each do |food|
      small = SmallItem.where(id: food.small_id)
      
      case food.large_id
        when "1" then
          large1_sum += food.weight / small[0].weight * small[0].point
        when "2" then
          large2_sum += food.weight / small[0].weight * small[0].point
        when "3" then
          large3_sum += food.weight / small[0].weight * small[0].point
        when "4" then
          large4_sum += food.weight / small[0].weight * small[0].point
        when "5" then
          large5_sum += food.weight / small[0].weight * small[0].point
        when "6" then
          large6_sum += food.weight / small[0].weight * small[0].point
        when "7" then
          large7_sum += food.weight / small[0].weight * small[0].point
        when "8" then
          large8_sum += food.weight / small[0].weight * small[0].point
        when "9" then
          large9_sum += food.weight / small[0].weight * small[0].point
      end
    end
    
    #品目ポイント合計計算
    sum_sum = large1_sum + large2_sum + large3_sum + large4_sum + large5_sum +
              large6_sum + large7_sum + large8_sum + large9_sum
    
    activity = Activity.where(old_id: current_user.old_id, 
                              sex_id: current_user.sex_id, 
                              activity_level: current_user.activity_level)
    
    #品目ポイント不足判定
    if large1_sum < activity[0].large1 then
      large1_flg = 1
    end
    
    if large2_sum < activity[0].large2 then
      large2_flg = 1
    end
    
    if large3_sum < activity[0].large3 then
      large3_flg = 1
    end
    
    if large4_sum < activity[0].large4 then
      large4_flg = 1
    end
    
    if large5_sum < activity[0].large5 then
      large5_flg = 1
    end
    
    if large6_sum < activity[0].large6 then
      large6_flg = 1
    end
    
    if large7_sum < activity[0].large7 then
      large7_flg = 1
    end
    
    if large8_sum < activity[0].large8 then
      large8_flg = 1
    end
    
    if large9_sum < activity[0].large9 then
      large9_flg = 1
    end
    
    #登録
    current_user.user_items.create(large1_sum: large1_sum, large2_sum: large2_sum, large3_sum: large3_sum,
                    large4_sum: large4_sum, large5_sum: large5_sum, large6_sum: large6_sum,
                    large7_sum: large7_sum, large8_sum: large8_sum, large9_sum: large9_sum,
                    sum_sum: sum_sum,
                    large1_flg: large1_flg, large2_flg: large2_flg, large3_flg: large3_flg,
                    large4_flg: large4_flg, large5_flg: large5_flg, large6_flg: large6_flg,
                    large7_flg: large7_flg, large8_flg: large8_flg, large9_flg: large9_flg,
    )
    
    @user_item = current_user.user_items.order(created_at: :desc)
    @standard = current_user.standard
    
    #category_id取得
    getCategoryId(LargeItem.all)
    
  end
  
  def getCategoryId(large)
    @category_id1 = call(large[0].large_val)
    @category_id2 = call(large[1].large_val)
    @category_id3 = call(large[2].large_val)
    @category_id4 = call(large[3].large_val)
    @category_id5 = call(large[4].large_val)
    @category_id6 = call(large[5].large_val)
    @category_id7 = call(large[6].large_val)
    @category_id8 = call(large[7].large_val)
    @category_id9 = call(large[8].large_val)    
  end
  
end
