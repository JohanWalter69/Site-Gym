Rails.application.routes.draw do
  root to: 'pages#home'

  get "about", to: "pages#about"

  get "contact", to: "pages#contact"

  get "disciplines", to: "pages#disciplines"

  get "news", to: "pages#news"

  get "stages", to: "stages#index"

end
