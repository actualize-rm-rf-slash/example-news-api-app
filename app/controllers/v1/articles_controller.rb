class V1::ArticlesController < ApplicationController
  def index
    response = Unirest.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=#{ENV['NEWS_API_KEY']}")
    render json: response.body
  end
end
