Omnislash::Application.routes.draw do
  root "home#index"
  get '/auth/:provider/callback/', to: "sessions#create"
  delete 'signout', to: "sessions#destroy", as: "signout"
end
