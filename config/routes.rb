Rails.application.routes.draw do
  #very end, custom in front.
  # resources :markets
  get "/users/ll", to: "users#ll"
  get "/users/show", to: "users#show"

  get "/users/new", to: "users#new"
  post "/users/new", to: "users#create"

  # resources :users
  resources :vendors
  resources :products


  post "/", to: "users#login"
  get "/", to: "users#index"
   #HP User sign in reference
  post "/users/signup", to: "users#create"
  get "/users/signup", to: "users#create"
  get "/users/show", to: "users#show"

  # get "/users/ll", to: "users#ll"


  # get "/users", to: "users#index"
  # get "/loginlanding", to: "users#loginlanding"


  get  "/products",     to: "products#index"
  post "/products/new", to: "products#create"
  get  "/products/new", to: "products#new"
  get "/products/destroy/:id",  to: "products#destroy"
  get "/product/:id/edit", to: "products#edit"
  put "/product/:id", to: "products#update"

  root "products#index"

  get  "/vendors",     to: "vendors#index"
  post "/vendors/new", to: "vendors#create"
  get  "/vendors/new", to: "vendors#new"
  get "/vendors/destroy/:id",  to: "vendors#destroy"
  get "/vendor/:id/edit", to: "vendors#edit"
  put "/vendor/:id", to: "vendors#update"

  get  "/markets",     to: "markets#index"
  post "/markets/new", to: "markets#create"
  get  "/markets/new", to: "markets#new"
  get "/markets/destroy/:id",  to: "markets#destroy"
  get "/market/:id/edit", to: "markets#edit"
  put "/market/:id", to: "markets#update"

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
