Rails.application.routes.draw do

  root 'site#login'

  resources :profiles do
    resources :shouts
  end

  # # login page and about

  get 'site/login', to: 'site#login'

  get 'site/about', to: 'site#about'

  #post '/profiles/new', to: 'profiles#create'

#   Prefix Verb   URI Pattern                                     Controller#Action
#               root GET    /                                               site#login
#     profile_shouts GET    /profiles/:profile_id/shouts(.:format)          shouts#index
#                    POST   /profiles/:profile_id/shouts(.:format)          shouts#create
#  new_profile_shout GET    /profiles/:profile_id/shouts/new(.:format)      shouts#new
# edit_profile_shout GET    /profiles/:profile_id/shouts/:id/edit(.:format) shouts#edit
#      profile_shout GET    /profiles/:profile_id/shouts/:id(.:format)      shouts#show
#                    PATCH  /profiles/:profile_id/shouts/:id(.:format)      shouts#update
#                    PUT    /profiles/:profile_id/shouts/:id(.:format)      shouts#update
#                    DELETE /profiles/:profile_id/shouts/:id(.:format)      shouts#destroy
#           profiles GET    /profiles(.:format)                             profiles#index
#                    POST   /profiles(.:format)                             profiles#create
#        new_profile GET    /profiles/new(.:format)                         profiles#new
#       edit_profile GET    /profiles/:id/edit(.:format)                    profiles#edit
#            profile GET    /profiles/:id(.:format)                         profiles#show
#                    PATCH  /profiles/:id(.:format)                         profiles#update
#                    PUT    /profiles/:id(.:format)                         profiles#update
#                    DELETE /profiles/:id(.:format)                         profiles#destroy

  # # login page and about

  # get 'site/login', to: 'site#login'

  # get 'site/about', to: 'site#about'

  # # profile crud

  # get '/profile/new', to: 'profile#new'

  # get 'profile/:profile_id', to: 'profile#show'

  # get 'profile/:profile_id/edit', to: 'profile#edit'

  # post 'profile', to: 'profile#create'

  # put 'profile/:profile_id', to: 'profile#update'

  # delete 'profile/:id', to: 'profile#destroy'






  # # shouts crud

  # get 'shouts/index', to: 'shouts#index'

  # get 'shouts/new', to: 'shouts#new'

  # get 'shouts/edit'

  # get 'shouts/show'

end
