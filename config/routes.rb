Rails.application.routes.draw do
  root "top#index"

  resources :friends do 
    resources :telephones
    # , only: [:index]
  end
  resources :telephones

end
