Rails.application.routes.draw do
  namespace :v1 do
    get "/articles" => "articles#index"

    get "/callback" => "musics#spotify_api_callback"
  end
end
