DaDbDc::Application.routes.draw do
  root 'templates#index'
  resources :templates
  resources :extracts do
    collection { post :upload}
  end
end
