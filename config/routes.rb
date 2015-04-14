Rails.application.routes.draw do

  root :to => 'site#login'
  
  resources :profile_sessions


  resources :profiles do
    resources :shouts
  end

post 'login' => 'profile_sessions#attempt_login', :as => :login
post 'logout' => 'profile_sessions#logout', :as => :logout
  # # login page and about

  get 'site/login', to: 'site#login'

  get 'site/about', to: 'site#about'

  # for twilio
  # post 'twilio/voice', to: 'twilio#voice'
  # post 'notifications/notify', to: 'notifications#notify'

# Prefix Verb   URI Pattern                                     Controller#Action
#                 root GET    /                                               site#login
#     profile_sessions GET    /profile_sessions(.:format)                     profile_sessions#index
#                      POST   /profile_sessions(.:format)                     profile_sessions#create
#  new_profile_session GET    /profile_sessions/new(.:format)                 profile_sessions#new
# edit_profile_session GET    /profile_sessions/:id/edit(.:format)            profile_sessions#edit
#      profile_session GET    /profile_sessions/:id(.:format)                 profile_sessions#show
#                      PATCH  /profile_sessions/:id(.:format)                 profile_sessions#update
#                      PUT    /profile_sessions/:id(.:format)                 profile_sessions#update
#                      DELETE /profile_sessions/:id(.:format)                 profile_sessions#destroy
#       profile_shouts GET    /profiles/:profile_id/shouts(.:format)          shouts#index
#                      POST   /profiles/:profile_id/shouts(.:format)          shouts#create
#    new_profile_shout GET    /profiles/:profile_id/shouts/new(.:format)      shouts#new
#   edit_profile_shout GET    /profiles/:profile_id/shouts/:id/edit(.:format) shouts#edit
#        profile_shout GET    /profiles/:profile_id/shouts/:id(.:format)      shouts#show
#                      PATCH  /profiles/:profile_id/shouts/:id(.:format)      shouts#update
#                      PUT    /profiles/:profile_id/shouts/:id(.:format)      shouts#update
#                      DELETE /profiles/:profile_id/shouts/:id(.:format)      shouts#destroy
#             profiles GET    /profiles(.:format)                             profiles#index
#                      POST   /profiles(.:format)                             profiles#create
#          new_profile GET    /profiles/new(.:format)                         profiles#new
#         edit_profile GET    /profiles/:id/edit(.:format)                    profiles#edit
#              profile GET    /profiles/:id(.:format)                         profiles#show
#                      PATCH  /profiles/:id(.:format)                         profiles#update
#                      PUT    /profiles/:id(.:format)                         profiles#update
#                      DELETE /profiles/:id(.:format)                         profiles#destroy
#                login GET    /login(.:format)                                profile_sessions#new
#               logout POST   /logout(.:format)                               profile_sessions#destroy
#           site_login GET    /site/login(.:format)                           site#login
#           site_about GET    /site/about(.:format)                           site#about
# notifications_notify POST   /notifications/notify(.:format)                 notifications#notify                notifications#notif                        profiles#destroy

end
