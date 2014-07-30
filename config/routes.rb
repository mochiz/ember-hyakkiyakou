Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :creatures
    end
  end

  root 'home#index'
  get '*path', to: 'home#index'
end
