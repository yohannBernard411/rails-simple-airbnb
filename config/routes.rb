Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats
end

# Prefix Verb   URI Pattern               Controller#Action
# flats GET    /flats(.:format)          flats#index
#       POST   /flats(.:format)          flats#create
# new_flat GET    /flats/new(.:format)      flats#new
# edit_flat GET    /flats/:id/edit(.:format) flats#edit
#  flat GET    /flats/:id(.:format)      flats#show
#       PATCH  /flats/:id(.:format)      flats#update
#       PUT    /flats/:id(.:format)      flats#update
#       DELETE /flats/:id(.:format)      flats#destroy