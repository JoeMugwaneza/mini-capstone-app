Rails.application.routes.draw do
	get "/products", to: 'products#index'
	get "/products/new", to: 'products#new'
  post "/products/search", to: 'products#search'
	get "/products/:id", to: 'products#show'
	post "/products", to: 'products#create'
	get "/products/:id/edit", to: 'products#edit'
	patch "/products/:id", to: 'products#update'
	delete "/products/:id", to: 'products#destroy'

  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/delete", to: 'sessions#destroy'

  get "/images", to: 'images#new'
  post "/products/:id/images", to: 'images#create'


  
end
