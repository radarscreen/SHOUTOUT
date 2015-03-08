Rails.application.routes.draw do

  root 'site#index'

  # login page and about

  get 'site/index'

  get 'site/about'

  # login crud

  get 'profiles/index'

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/show'
 
  # shouts crud

  get 'shouts/index', to: 'shouts#index'

  get 'shouts/new', to: 'shouts#new'

  get 'shouts/edit'

  get 'shouts/show'

end
