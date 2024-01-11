Rails.application.routes.draw do
  get 'reload/top'
  get 'lists/new'
  post 'lists'=>'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/index'
  get 'lists/:id'=>'lists#show'
  get 'lists/edit'
  get '/top'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
