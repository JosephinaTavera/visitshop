Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root "shops#index"
	get "/shops", to: "shops#index"
	get "/shops/new", to: "shops#new"
	post "/shops", to: "shops#create" 
	get "/shops/:id", to: "shops#show", as: :shop 
	get "shops/:id/edit", to: "shops#edit", as: :edit_shops
	patch "/shops/:id", to: "shops#update"
	delete "/shops/:id", to: "shops#destroy"
end
