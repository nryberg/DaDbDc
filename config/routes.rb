DaDbDc::Application.routes.draw do
  root 'templates#index'
  resources :templates
  resources :columns do
    collection { post :upload}
  end
end
