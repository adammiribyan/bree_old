Bree::Application.routes.draw do
  get "application/autocomplete_patient_full_name"
  
  resources :patients

  # root :to => "welcome#index"
end
