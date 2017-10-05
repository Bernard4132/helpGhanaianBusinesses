Rails.application.routes.draw do
  resources :dreams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  match 'helpbusinessesgrow', to: 'static_pages#helpbusinessesgrow', via: 'get'
end
