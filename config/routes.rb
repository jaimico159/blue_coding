Rails.application.routes.draw do
  resources :links
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/:short_key', to: 'links#redirect_to_external_url'
  root to: 'links#new'
end
