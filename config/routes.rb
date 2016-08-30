Rails.application.routes.draw do

  root to: 'pages#home'

  get 'art/:id', to: 'pages#show', as: 'artwork'

  get '/contact', to: 'pages#contact'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
