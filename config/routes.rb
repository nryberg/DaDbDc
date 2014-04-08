DaDbDc::Application.routes.draw do
  root 'templates#index'
  resources :templates
  resources :servers
  resources :bases
  resources :schemas
  resources :tableaus
  resources :columns



  resources :loaders do 
    collection { post :upload}
  end

  get '/upload_schema' => 'loaders#upload_schema', as: 'upload_schema'
end
