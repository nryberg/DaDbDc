DaDbDc::Application.routes.draw do
  root 'templates#index'
  resources :templates
  resources :columns do
    collection { post :upload}
  end

  resources :loaders do 
    collection { post :upload}
  end

  get '/upload_schema' => 'loaders#upload_schema', as: 'upload_schema'
end
