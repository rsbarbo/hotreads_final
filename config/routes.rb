Rails.application.routes.draw do
  root "homepage#index"

  namespace :api do
    namespace :v1 do
      resources :hotreads, only: [:create, :index]
    end
  end
end
