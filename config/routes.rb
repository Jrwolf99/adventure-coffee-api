Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'resources/index'
      get 'resources/show'
      get 'resources/create'
    end
  end
end
