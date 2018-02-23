Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'action_a', to: 'application#action_a'
  get 'action_b', to: 'application#action_b'
end
