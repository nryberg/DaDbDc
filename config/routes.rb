DaDbDc::Application.routes.draw do
  root 'templates#index'
  resources :templates
  resources :columns do
    collection { post :upload}
  end

  get '/upload_schema' => 'columns#upload_schema', as: 'upload_schema'
end
