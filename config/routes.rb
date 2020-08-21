Rails.application.routes.draw do
  resources :vendors
  resources :sweets
  resources :vendor_sweets
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
