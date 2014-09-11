Mpt::Application.routes.draw do
  resources :invoices

  get "logged/index"
  resources :users
  get '/users/blank' => 'users#blank'
  get '/logged/login_page' => 'logged#login_page'
  get '/logged/login_check' => 'logged#login_check'
  post '/logged/login_check' => 'logged#login_check'
  get '/logged/home_page' => 'logged#home_page'
  get '/logged/logged_in' => 'logged#logged_in'
  get '/invoices/update' => 'invoices#update'
  get '/invoices/show' => 'invoices#show'
  get '/logged/logged_in1' => 'logged#logged_in1'
  get '/logged/changeup' => 'logged#changeup'
  get '/logged/changedown' => 'logged#changedown'
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
