Erloncarlos::Application.routes.draw do
 

  

 

   resources :contacts
   resources :posts
   resources :clients
   resources :abouts
   resources :services
   resources :galleries
   root :to => "pages#index"
  

scope '/admin' do

  devise_for :users, :controllers => {

    :sessions => "admin/sessions",
    :passwords => "admin/passwords"
  }

end
  
  namespace :admin do
      resources :categories
      resources :contacts
      resources :types
      resources :galleries
      resources :posts
      resources :users
      root :to => "homes#index"

  end

  
end
