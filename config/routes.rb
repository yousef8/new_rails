Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "posts", to: "post#index"
  get "posts/new", to: "post#new", as: "new_post"
  get "posts/:id", to: "post#show", as: "post"
  post "posts", to: "post#create"
  get "posts/:id/edit", to: "post#edit", as: "edit_post"
  patch "posts/:id", to: "post#update"
  delete "posts/:id", to: "post#destroy"

  get "authors", to: "author#index", as: "authors"
  get "authors/new", to: "author#new", as: "new_author"
  get "authors/:id", to: "author#show", as: "author"
  post "authors", to: "author#create"
  # get "authors/:id/edit", to: "author#edit", as: "edit_author"
  # patch "authors/:id", to: "author#update"
  # delete "authors/:id", to: "author#destroy"
end
