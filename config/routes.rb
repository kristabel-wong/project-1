Rails.application.routes.draw do
    get 'search', :to => 'search#index' 
    root :to => 'pages#home'
    resources :users
    resources :trips do
        resources :bookings, :only => [:create, :destroy]
    end
    resources :comments, :only => [:create, :edit, :update, :destroy]
    
    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
    get '/passenger' => 'pages#index'
    get '/trips/:id/comments/new' => 'comments#new', :as => 'new_comment'
end
