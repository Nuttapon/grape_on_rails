Rails.application.routes.draw do
  mount API::Base => '/api'
  resources :blogs
end
