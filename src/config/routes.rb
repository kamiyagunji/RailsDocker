Rails.application.routes.draw do
  namespace :api, format: 'json' do
    resources :genres
    namespace :v1 do
      resources :genres
    end
  end
end
