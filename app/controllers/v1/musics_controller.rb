class V1::MusicsController < ApplicationController
  def spotify_api_callback
    render json: {code: params[:code], error: params[:error], state: params[:state]}
  end
end
