Rails.application.routes.draw do
    root :to => 'pages#home'
    resources :users
    resources :trips

    get '/login' => 'session#new'
    get '/login/:id' => 'session#show', :as => :show_login
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
end
