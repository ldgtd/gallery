Gallery::Application.routes.draw do
  
  controller :sessions do 
    get  'login'  => :new
    post 'login'  => :create
    get  'logout' => :destroy
  end

  controller :contact do 
    get 'contact' => :new
    post 'contact' => :create
  end

  resources :admins, controller: 'admin', path: 'admin'
  resources :galleries

  root to: 'galleries#index'
end
