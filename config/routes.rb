# == Route Map
#
#           Prefix Verb   URI Pattern                      Controller#Action
#             root GET    /                                headcase#welcome
#     hairdressers GET    /hairdressers(.:format)          hairdressers#index
#                  POST   /hairdressers(.:format)          hairdressers#create
#  new_hairdresser GET    /hairdressers/new(.:format)      hairdressers#new
# edit_hairdresser GET    /hairdressers/:id/edit(.:format) hairdressers#edit
#      hairdresser GET    /hairdressers/:id(.:format)      hairdressers#show
#                  PATCH  /hairdressers/:id(.:format)      hairdressers#update
#                  PUT    /hairdressers/:id(.:format)      hairdressers#update
#                  DELETE /hairdressers/:id(.:format)      hairdressers#destroy
#           videos GET    /videos(.:format)                videos#index
#                  POST   /videos(.:format)                videos#create
#        new_video GET    /videos/new(.:format)            videos#new
#       edit_video GET    /videos/:id/edit(.:format)       videos#edit
#            video GET    /videos/:id(.:format)            videos#show
#                  PATCH  /videos/:id(.:format)            videos#update
#                  PUT    /videos/:id(.:format)            videos#update
#                  DELETE /videos/:id(.:format)            videos#destroy
#

Rails.application.routes.draw do

root :to => "session#new"
resources :hairdressers, :videos
resources :favorite_videos, only: [:create, :destroy]

get '/welcome' => 'headcase#welcome'

get '/users/account' => 'users#account'

#Login and user info
resources :users, :only => [:new, :create, :index, :update]
get '/users/edit' => 'users#edit'

get 'users/index' => 'users#index'
get '/signup' => 'users#new'

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
