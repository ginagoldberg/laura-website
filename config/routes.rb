Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'

  get 'art/:id', to: 'pages#show', as: 'artwork'

  get '/contact', to: 'pages#contact'

  # scope '/admin' do
  #   resources :artworks, except: [:show, :index], path: ''
  # end

end
