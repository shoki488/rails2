Rails.application.routes.draw do
  get 'checks/index', to: 'checks#index'
  get 'schedule/hello', to: 'schedule#hello'
  get 'schedule/call', to: 'schedule#call'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :checks
end
