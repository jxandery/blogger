Rails.application.routes.draw do

  Blogger::Application.routes.draw do
    resources :articles do
      resources :comments
    end
  end

  root to: 'articles#index'
  #root 'pages#main' # shortcut for the above
end
