Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '/station/:id' => 'station#getInfo'
end
