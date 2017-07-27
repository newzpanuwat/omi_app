Rails.application.routes.draw do
  root 'home#index'

  get 'home/profile'

  get 'auth/:provider/callback', to: "session#create"
  
  delete 'sign_out', to: "session#destroy", as: 'sign_out'

end
