Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  get '/pets', to: 'pets#index', as: :pets
  # form
  get '/pets/new', to: 'pets#new', as: :new_pet
  # creation
  post '/pets', to: 'pets#create'

  # show
  get '/pets/:id', to: 'pets#show', as: :pet

  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'
  # resources :pets, only: :new
end
