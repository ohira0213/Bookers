Rails.application.routes.draw do
  get 'lists/new'
  get 'top'=>'homes#top'
  post 'lists'=>'lists#create'
  get 'lists/index' => 'lists/new'
  get 'lists/:id'=>'lists#show', as: 'list'
  get 'lists/:id/edit'=>'lists#edit', as: 'edit_list'
  patch 'lists/:id'=>'lists#update', as: 'update_list'
  delete 'list/:id'=>'lists#destroy', as: 'destroy_list'
end
