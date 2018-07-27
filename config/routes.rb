Rails.application.routes.draw do
  resources :documents
  root 'documents#index'

  get 'delete_attachment', to: 'documents#delete_attachment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
