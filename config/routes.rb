Rails.application.routes.draw do
  namespace :v1 do
    get "/articles" => "articles#index"
  end
end
