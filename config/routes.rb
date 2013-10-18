Yalejournal::Application.routes.draw do
  devise_for :users
  root to: "home#index"
  resource :articles
  get 'article' => 'article#index'
end
