Rails.application.routes.draw do
  
  
  mount Hyperloop::Engine => '/hyperloop'
  #get 'home/Helloworld'

  root 'home#helloworld'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
