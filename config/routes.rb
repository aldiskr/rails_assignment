Rails.application.routes.draw do

  root 'documents#index'
  resources :documents do
  resources :document_attachments
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
