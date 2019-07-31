Rails.application.routes.draw do
 

  resources :articles
get 'welcome/home', to:'welcome#home'
get 'welcome/about', to:'welcome#about'
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


