Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'vehicles/new' => 'vehicles#new'
  get 'vehicles/:id' => 'vehicles#show'
  get 'vehicles' => 'vehicles#index'
  post 'vehicles/new' => 'vehicles#create'
  get 'vehicles/:id/delete' => 'vehicles#destroy'
end
