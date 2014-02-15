DaDbDc::Application.routes.draw do
  root 'template#index'
  resources :templates
end
