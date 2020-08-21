Rails.application.routes.draw do
  # get 'vendor/index'

  # get 'vendor/show'

  # get 'vendor/create'

resources :vendors #, only: [:index, :show]
resources :sweets #, only: [:index, :show]
resources :vendor_sweets #, only: [:new]

end
