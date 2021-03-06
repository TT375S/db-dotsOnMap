Rails.application.routes.draw do
  get 'dots/index'

  get 'dots/show'

  get 'dots/api/search/rectangle/json', to: 'dots#searchRectangle'

  post 'dots/api/post/json', to: 'dots#post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
