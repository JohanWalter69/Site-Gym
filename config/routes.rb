Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "about", to: "pages#about"

  get "contact", to: "pages#contact"

  get "disciplines", to: "pages#disciplines"

  # get "news", to: "pages#news" // pour que le site devienne dynamique on a modifié la fonction et le chemin de stages vers index

  get "stages", to: "stages#index"

  get "stages/new", to: "stages#new"

  post "stages", to: "stages#create"

  get "stages/:id", to: "stages#show", as: :stage

  delete "stages/:id", to: "stages#destroy"

  get "stages/:id/edit", to: "stages#edit", as: :stage_edit

  patch "stages/:id", to: "stages#update"


end
