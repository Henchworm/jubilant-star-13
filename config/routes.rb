Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:show]

  resources :hospitals, only: [:show]

  resources :patients, only: [:index]

  delete "/doctors/:doctor_id/patients/:patient_id", to: 'doctor_patient#destroy'

end
