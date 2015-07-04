Rails.application.routes.draw do
  get 'search_index' => 'tag#index'
  get 'search_list' => 'search#list'
end
