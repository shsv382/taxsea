Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#home"
  get "/home" 	=> "static_pages#home"
  get "/help" 	=> "static_pages#help"
  get "/about" 	=> "static_pages#about"

  resources :boats

end
