Rails.application.routes.draw do
  require 'sidekiq/web'

  root :to => "home#index"
  post '/upload_csv' => 'home#upload_csv' , as: 'home_upload_csv'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'

  mount ActionCable.server => '/cable'
end
