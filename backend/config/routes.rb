Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/show'
  scope :api, defaults: {format: :json} do
    resources :examples
    # You need to return JWT within the response of sign in request
    devise_for :users, controllers: {sessions: 'sessions'}
    devise_scope :user do
      get 'users/current', to: 'sessions#show'
    end
  end
end
