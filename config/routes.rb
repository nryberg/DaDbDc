DaDbDc::Application.routes.draw do
  root 'translation#index'
  resources :translations
end
