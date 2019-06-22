Rails.application.routes.draw do
  require 'sidekiq/web'

  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'

  mount ActionCable.server => '/cable'
end
