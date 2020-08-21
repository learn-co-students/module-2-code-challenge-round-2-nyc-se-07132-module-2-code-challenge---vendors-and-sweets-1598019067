Rails.application.routes.draw do
  
  resources :vendorsweets
  resources :vendors
  resources :sweets

  get '/vendorsweets/new', to: "vendorsweets#new", as: "new_vendorsweets"
  get '/vendorsweets/create', to: "vendorsweets#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
