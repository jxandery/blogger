Rails.application.routes.draw do

  Blogger::Application.routes.draw do
    resources :articles do
      resources :comments
    end
    resources :tags
    resources :authors
    resources :author_sessions, only: [ :new, :create, :destroy ]

    get 'login'  => 'author_sessions#new'
    get 'logout' => 'author_sessions#destroy'
  end

  root to: 'articles#index'
  #root 'pages#main' # shortcut for the above
end
