Rails.application.routes.draw do
  # scope the backend to provide deeplinks for ember-app
  scope '/backend' do
    get :csrf, to: 'csrf#index'
    devise_for :users, controllers: { sessions: 'sessions' }
    resources :users
    resources :pictures
  end

  root 'ember#frontend'
  get '/*path' => 'ember#frontend'
end
