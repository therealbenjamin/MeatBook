Rails.application.routes.draw do

  root to: 'entries#index'

  get '/entries/:id', to: 'entries#show'

end
