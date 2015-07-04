Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  get 'search_index' => 'tag#index'
  get 'search_list' => 'search#list'
end
