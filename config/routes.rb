Rails.application.routes.draw do
  namespace :solidus_paypal_braintree do
    resource :checkout, only: [:update, :edit]
    resource :client_token, only: [:create], format: :json
    resource :transactions, only: [:create]

    resources :configurations do
      collection do
        get :list
        post :update
      end
    end
  end
end
