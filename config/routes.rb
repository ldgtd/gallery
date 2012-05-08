Gallery::Application.routes.draw do
  
  controller :sessions do 
    get  'login'  => :new
    post 'login'  => :create
    get  'logout' => :destroy
  end

  # admin access to galeries
  # controller :admin do
  # 	get  'admin'             => :index
  # 	get  'admin/new'         => :new
  # 	post 'admin'             => :create
  #   get  'admin/:id/edit'    => :edit
  #   put  'admin/:id'         => :update
  # end
 
  # public access to galleries
  # controller :galleries do
  # 	get 'galleries'     => :index
  # 	get 'galleries/:id' => :show
  # end

  resources :admins, controller: 'admin', path: 'admin'
  resources :galleries

  root to: 'galleries#index'
end
