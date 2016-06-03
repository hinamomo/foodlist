class RakutenController < ApplicationController
  
  def search
    
   # require 'open-uri'
   # require 'active_support/core_ext'
   # require 'json'
   
   # uri = URI("https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/
   #            20121121?format=json&categoryId=33&https://app.rakuten.co.jp/services/api/Recipe/
   #            CategoryRanking/20121121?format=json&categoryId=" + params[:rakuten.id] + "&applicationId=" + RAKUTEN_APPLICATION_ID)
   # uri.query = {
   #   rsz: 8, v: 1.0, safe: "active", as_filetype: "gif", imgsz: "large",
   #   as_sitesearch: "tumblr.com", q: "ラブライブ！"
   # }.to_param
   # uri.to_s

   # res = open(uri).read
   # @result = JSON.parse(res)
  end
  
end
