Rails.application.routes.draw do
  get 'password_resets/new'

  root 'sessions#new'
  # Usuarios
  resources :users
  get 'new_user' => 'users#new', as: :user_new
  post 'create' => 'users#create'
  get '/user/index' => 'users#index', as: :user_index
  patch '/user/:id/desstroy' => 'users#destroy', as: 'destroy_user'
  # Stores
  resources :stores
  get 'new_store' => 'stores#new', as: :store_new
  post 'create' => 'stores#create'
  get '/store/index' => 'stores#index', as: :store_index
  patch '/store/:id/destroy' => 'stores#destroy', as: 'destroy_store'
  # Rutas para sesiones
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # Ventas
  get 'sales' => 'sales#index', as: :principal

  # Password
  resources :password_resets
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
