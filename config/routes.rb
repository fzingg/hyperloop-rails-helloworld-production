Rails.application.routes.draw do
  
  #get 'home/Helloworld'

  mount Hyperloop::Engine => '/rr'
  root 'home#helloworld'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
