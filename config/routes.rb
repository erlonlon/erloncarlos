Erloncarlos::Application.routes.draw do
  
  
scope '/admin' do

  devise_for :users, :controllers => {

    :sessions => "admin/sessions",
    :passwords => "admin/passwords"
  }

end
  

   resources :contacts
   resources :posts

  root :to => "pages#index"

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
