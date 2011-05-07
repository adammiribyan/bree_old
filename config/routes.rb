Bree::Application.routes.draw do
  resources :comments

  resources :doctors

  resources :services

  resources :categories

  get "teeth_charts/update"

  get "application/autocomplete_patient_full_name"
  
  resources :patients
  resources :teeth_charts

  root :to => "patients#new"
end
