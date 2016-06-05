# coding: utf-8
require 'open-uri'
require 'json'
require 'yaml'

module RecommendRecipe
  application_id = Rails.application.secrets.rakuten_application_id
  
  RECIPE_CATEGORY_URL="https://app.rakuten.co.jp/services/api/Recipe/CategoryList/20121121?format=json&elements=categoryName%2CcategoryId%2CparentCategoryId&categoryType=medium&applicationId=#{application_id}"
  
  DICTIONARY = {"乳・乳製品" => "ヨーグルト",
           "卵"=>"半熟卵",
           "魚介・肉"=>"牛肉",
           "豆・豆製品"=>"木綿豆腐",
           "野菜"=>"野菜スープ",
           "芋類"=>"かぼちゃ",
           "果物"=>"春の果物",
           "穀物"=>"もち麦",
           "油脂"=>"オリーブオイル"
  }
  
  def call(food)
    hearing(food)
  end
  
  private
  
  def hearing(food)
    #@results ||= recipe_categories
    @results = recipe_categories
    return @results
    #デバッグ
    # recipe_category_id = @results.fetch(DICTIONARY[food], nil)
    # return recipe_category_id
  end

  # APIからレシピのカテゴリなどを取得
  def recipe_categories
    response = ""
    begin
      # response=open(RECIPE_CATEGORY_URL).read
      #デバッグ
      response=open(RECIPE_CATEGORY_URL)
      return response
    rescue => e
      logger.debug("debug--------------------------------")
      logger.debug(response.status)
    ensure
      logger.debug("debug--------------------------------")
      logger.debug(response.status)
    end
    # results=JSON.parse(response.force_encoding('UTF-8'))
    # return results["result"]["medium"].map{|result| [result['categoryName'], "#{result['parentCategoryId']}-#{result['categoryId']}"]}.to_h
  end
end
