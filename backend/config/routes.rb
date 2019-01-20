Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :examples
    devise_for :users
  end
end
