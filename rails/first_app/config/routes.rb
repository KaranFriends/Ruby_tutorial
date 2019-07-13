Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  resources :comments
  # put 'articles/:id/put_update', as: 'article_put_update', to: 'articles#put_update'

  root 'welcome#index'
end
