Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'blogpost/new', to: 'blog_posts#new', as: :blogpost_new
  get 'blogpost/:id', to: 'blog_posts#show', as: :blog_post
  get 'blogpost/:id/edit', to: 'blog_posts#edit', as: :blog_post_edit
  patch 'blogpost/:id', to: 'blog_posts#update'
  post 'blogposts', to: 'blog_posts#create', as: :blog_posts
  # Defines the root path route ("/")
  root 'blog_posts#index'
end
