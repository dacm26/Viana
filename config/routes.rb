Viana::Application.routes.draw do
  #devise_for :users
  
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  
  resources :ticketbills

  resources :packages

  resources :voyages

  resources :itineraries

  resources :assistants

  resources :drivers

  resources :buses

  resources :tickets

  resources :seatcategories

  resources :customercategories

  resources :cities
  
  resources :home
  
  resources :queries
  
  resources :from_tos
  
  get '/from_tos/:id' => 'fromtos#to_ticket', :as => 'to_ticket'
  
  get '/query1' => 'queries#query1'
  
  get '/query2' => 'queries#query2'
  
  get '/query3' => 'queries#query3'
  
  get '/query4' => 'queries#query4'
  
  get '/query5' => 'queries#query5'
  
  get '/query6' => 'queries#query6'
  
  get '/query7' => 'queries#query7'
  
  get '/query8' => 'queries#query8'
  
  get '/query9' => 'queries#query9'
  
  get '/query9/:id' => 'queries#make_admin', :as => 'make_admin'
  
  get '/view_users' => 'queries#view_users'
  
  get '/query5/:id' => 'queries#payaticket', :as => 'pay_a_ticket'
  
  #get '/from_to' => 'ticketbills#from_to', :as => 'from_to'
  
  #get '/ticketbills/new/:id' => 'ticketbills#to_ticket', :as => 'to_ticket'
  
  #get '/ticketbills/new?ticket_id=:ticket_id' => 'ticketbills#mod'

  root 'home#index'
  
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
