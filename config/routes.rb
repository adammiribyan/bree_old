Bree::Application.routes.draw do
  resources :appointments

  resources :templates, :except => :show
  resources :comments
  resources :doctors
  resources :services
  resources :categories
  resources :patients
  resources :teeth_charts

  get "teeth_charts/update"
  get "application/autocomplete_patient_full_name"  

  root :to => "categories#index"
end
