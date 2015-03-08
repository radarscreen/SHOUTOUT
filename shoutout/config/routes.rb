Rails.application.routes.draw do

  root 'site#login'

  # login page and about

  get 'site/login'

  get 'site/about'

  # profile crud

  get '/profile/new', to: 'profile#new'

  get 'profile/:profile_id', to: 'profile#show'

  get 'profile/:profile_id/edit', to: 'profile#edit'

  post 'profile', to: 'profile#create'

  put 'profile/:profile_id', to: 'profile#update'

  delete 'profile/:id', to: 'profile#destroy'






  # shouts crud

  get 'shouts/index', to: 'shouts#index'

  get 'shouts/new', to: 'shouts#new'

  get 'shouts/edit'

  get 'shouts/show'

end
