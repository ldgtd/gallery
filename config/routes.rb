Gallery::Application.routes.draw do
  
  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end

 
  get 'admin' => 'admin#show'

  resources :galleries

  root to: 'galleries#index'
end
