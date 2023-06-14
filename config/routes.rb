Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :properties do
    resources :property_applications, only: [:index, :new, :create]
  end

  resources :property_applications, only: [:show, :edit, :update] do
    resources :bank_references, only: [:new, :show, :create, :edit]
    resources :employment_documents, only: [:new, :show, :create, :edit]
    resources :identificiations, only: [:new, :show, :create, :edit]
    resources :messages
  end

end
