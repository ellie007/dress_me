DressMe::Application.routes.draw do

  resources :comments

  resources :posts

  root 'outfits#index'

  get '/sessions/new' => 'sessions#new', :as => 'new_session'
  post '/sessions' => 'sessions#create', :as => 'sessions'
  delete '/sessions' => 'sessions#destroy', :as => 'session'

  # Routes for the Outfit resource:
  # CREATE
  get '/outfits/new', controller: 'outfits', action: 'new', as: 'new_outfit'
  post '/outfits', controller: 'outfits', action: 'create'

  # READ
  get '/outfits1', controller: 'outfits', action: 'index'
  get '/outfits/:id', controller: 'outfits', action: 'show', as: 'outfit'

  get '/outfits2', controller: 'outfits', action: 'index2'
  get '/outfits3', controller: 'outfits', action: 'index3'

  # UPDATE
  get '/outfits/:id/edit', controller: 'outfits', action: 'edit', as: 'edit_outfit'
  patch '/outfits/:id', controller: 'outfits', action: 'update'

  # DELETE
  delete '/outfits/:id', controller: 'outfits', action: 'destroy'
  #------------------------------

  # Routes for the Shoe resource:
  # CREATE
  get '/shoes/new', controller: 'shoes', action: 'new', as: 'new_shoe'
  post '/shoes', controller: 'shoes', action: 'create'

  # READ
  get '/shoes1', controller: 'shoes', action: 'index1'
  get '/shoes/:id', controller: 'shoes', action: 'show', as: 'shoe'

  get '/shoes2', controller: 'shoes', action: 'index2'

  # UPDATE
  get '/shoes/:id/edit', controller: 'shoes', action: 'edit', as: 'edit_shoe'
  patch '/shoes/:id', controller: 'shoes', action: 'update'

  # DELETE
  delete '/shoes/:id', controller: 'shoes', action: 'destroy'
  #------------------------------

  # Routes for the Shirt_top resource:
  # CREATE
  get '/shirt_tops/new', controller: 'shirt_tops', action: 'new', as: 'new_shirt_top'
  post '/shirt_tops', controller: 'shirt_tops', action: 'create'

  # READ
  get '/shirt_tops1', controller: 'shirt_tops', action: 'index1'
  get '/shirt_tops/:id', controller: 'shirt_tops', action: 'show', as: 'shirt_top'

  get '/shirt_tops2', controller: 'shirt_tops', action: 'index2'

  # UPDATE
  get '/shirt_tops/:id/edit', controller: 'shirt_tops', action: 'edit', as: 'edit_shirt_top'
  patch '/shirt_tops/:id', controller: 'shirt_tops', action: 'update'

  # DELETE
  delete '/shirt_tops/:id', controller: 'shirt_tops', action: 'destroy'
  #------------------------------


  # Routes for the Pant resource:
  # CREATE
  get '/pants/new', controller: 'pants', action: 'new', as: 'new_pant'
  post '/pants', controller: 'pants', action: 'create'

  # READ
  get '/pants1', controller: 'pants', action: 'index1'
  get '/pants/:id', controller: 'pants', action: 'show', as: 'pant'

  get '/pants2', controller: 'pants', action: 'index2'

  # UPDATE
  get '/pants/:id/edit', controller: 'pants', action: 'edit', as: 'edit_pant'
  patch '/pants/:id', controller: 'pants', action: 'update'

  # DELETE
  delete '/pants/:id', controller: 'pants', action: 'destroy'
  #------------------------------

  # Routes for the Dress_code resource:
  # CREATE
  get '/dress_codes/new', controller: 'dress_codes', action: 'new', as: 'new_dress_code'
  post '/dress_codes', controller: 'dress_codes', action: 'create'

  # READ
  get '/dress_codes', controller: 'dress_codes', action: 'index'
  get '/dress_codes/:id', controller: 'dress_codes', action: 'show', as: 'dress_code'

  # UPDATE
  get '/dress_codes/:id/edit', controller: 'dress_codes', action: 'edit', as: 'edit_dress_code'
  patch '/dress_codes/:id', controller: 'dress_codes', action: 'update'

  # DELETE
  delete '/dress_codes/:id', controller: 'dress_codes', action: 'destroy'
  #------------------------------


  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
