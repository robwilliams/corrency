Dummy::Application.routes.draw do
  resources :products, :only => 'show'
end
