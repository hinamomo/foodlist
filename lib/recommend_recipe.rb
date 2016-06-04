# coding: utf-8
require 'open-uri'
require 'json'
require 'yaml'
require 'natto'

class RecommendRecipe
  application_id = Rails.application.secrets.rakuten_application_id
  affiliate_id = Rails.application.secrets.rakuten_affiliate_id
  
  RECIPE_CATEGORY_URL="https://app.rakuten.co.jp/services/api/Recipe/CategoryList/20121121?format=json&elements=categoryName%2CcategoryId%2CparentCategoryId&categoryType=medium&applicationId=#application_id}"
  RECIPES_URL="https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/20121121?format=json&formatVersion=2&applicationId=#{keys['rakuten_api_id']}&categoryId="

  def getCategoryId
    large = LargeItem.all
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
  
  def call(food)
    hearing(food)
  end

  private

  def hearing(food)
      results = recipe_categories
      recipe_category_id = results.fetch(food, nil)
      return recipe_category_id
      # if(recipe_category_id.nil?)
      #   recipe_category_id = results.fetch(food, nil)
        # if(recipe_category_id.nil?)
        #   return "#{food}だとわからないからもうちょっと詳しく教えて(漢字⇆ひらがなにするといいかも)"
        # else
        #   recipe = choose_recipe(recipe_category_id)
        #   return "#{food}だと、#{recipe['recipeTitle']} とかはどう？ #{recipe['recipeUrl']}"+' <Supported by RWS>'
        # end

      # else
      #   recipe = choose_recipe(recipe_category_id)
      #   return "#{food}だと、#{recipe['recipeTitle']} とかはどう？ #{recipe['recipeUrl']}"+' <Supported by RWS>'
      # end
  end

  # APIからレシピのカテゴリなどを取得
  def recipe_categories
    response=open(RECIPE_CATEGORY_URL).read
    results=JSON.parse(response.force_encoding('UTF-8'))
    return results["result"]["medium"].map{|result| [result['categoryName'], "#{result['parentCategoryId']}-#{result['categoryId']}"]}.to_h
  end

  # 具体的なレシピを選択
  # def choose_recipe(recipe_category_id)
  #   response=open("#{RECIPES_URL}#{recipe_category_id}").read
  #   results=JSON.parse(response.force_encoding('UTF-8'))
  #   return results['result'][Random.rand(1 .. results['result'].count-1)]
  # end
end
