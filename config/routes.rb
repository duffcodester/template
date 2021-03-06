Weowe::Application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

  resources :users


  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/about'

  match '/stats', to: 'static_pages#stats',    via: 'get'
end
