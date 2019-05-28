Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root'posts#index', as: 'home'

  #a get requests '/about' gets the pages controller and calls the about method with coresponding view
  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end

end
