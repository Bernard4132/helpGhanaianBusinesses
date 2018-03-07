Rails.application.routes.draw do
  resources :courses
  resources :emailcourses
  resources :webs
  resources :contacts
  resources :expertleads
  resources :newsletters
  resources :facebookads
  resources :projecttypes
  
  resources :costs
  resources :projects do
   resources :timelines
  end
  resources :photos
  resources :potentials
  resources :legends
  resources :clients
  resources :sections
  resources :articles
  resources :leads
  devise_for :users
  resources :users, :only => [:show, :index]
  resources :dreams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  match 'helpbusinessesgrow', to: 'static_pages#helpbusinessesgrow', via: 'get'
  match 'homebig', to: 'static_pages#homebig', via: 'get'
  match 'home', to: 'static_pages#home', via: 'get'
  match 'websites', to: 'static_pages#websites', via: 'get'
  match 'digitalmarketing', to: 'static_pages#digitalmarketing', via: 'get'
  match 'seo', to: 'static_pages#seo', via: 'get'
  match 'socialandemailmarketing', to: 'static_pages#socialandemailmarketing', via: 'get'
  match 'aboutus', to: 'static_pages#aboutus', via: 'get'
  match 'helpghanaianbusinessesleads', to: 'static_pages#helpghanaianbusinessesleads', via: 'get'
  match 'thankyoulead', to: 'static_pages#thankyoulead', via: 'get'
  match 'ourservices', to: 'static_pages#ourservices', via: 'get'
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
  match 'fbadvertisementsleads', to: 'static_pages#fbadvertisementsleads', via: 'get'
  match 'learninternetmarketing', to: 'static_pages#learninternetmarketing', via: 'get'
end
