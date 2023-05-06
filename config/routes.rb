Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "blogpost/:id", to: "blog_posts#show", as: :blogpost
  # Defines the root path route ("/")
  root "blog_posts#index"
end
