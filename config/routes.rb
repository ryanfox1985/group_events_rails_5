# == Route Map
#
#              Prefix Verb   URI Pattern                         Controller#Action
# publish_group_event POST   /group_events/:id/publish(.:format) group_events#publish
#        group_events GET    /group_events(.:format)             group_events#index
#                     POST   /group_events(.:format)             group_events#create
#     new_group_event GET    /group_events/new(.:format)         group_events#new
#    edit_group_event GET    /group_events/:id/edit(.:format)    group_events#edit
#         group_event GET    /group_events/:id(.:format)         group_events#show
#                     PATCH  /group_events/:id(.:format)         group_events#update
#                     PUT    /group_events/:id(.:format)         group_events#update
#                     DELETE /group_events/:id(.:format)         group_events#destroy
#               users GET    /users(.:format)                    users#index
#                     POST   /users(.:format)                    users#create
#            new_user GET    /users/new(.:format)                users#new
#           edit_user GET    /users/:id/edit(.:format)           users#edit
#                user GET    /users/:id(.:format)                users#show
#                     PATCH  /users/:id(.:format)                users#update
#                     PUT    /users/:id(.:format)                users#update
#                     DELETE /users/:id(.:format)                users#destroy
#

Rails.application.routes.draw do
  resources :group_events do
    member do
      post 'publish'
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
