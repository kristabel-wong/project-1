Rails.application.routes.draw do
    root :to => 'pages#home'
    resources :users
    resources :trips do
        resources :bookings, :only => [:create, :destroy]
    end

    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
    get '/passenger' => 'pages#index'
end
