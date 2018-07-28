Rails.application.routes.draw do
  resources :customers
  resources :order_items
  resources :food_items
  #get 'welcome/index'
  
  get 'menu' => 'welcome#menu'
  get 'contact_us' => 'welcome#contact_us'
  get 'order' => 'welcome#order'
  get 'queries' => 'welcome#queries'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', :via => :get

 root 'welcome#menu'

 post :form_submit, to: "welcome#queries", as: :form_submit


end
