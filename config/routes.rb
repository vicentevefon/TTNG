Rails.application.routes.draw do

devise_for :users, controllers: {
      registrations: 'users/registrations'
    }

  resources :posts do
    resources :likes
    root to: "posts#index"
    get 'user_posts/:user_id' => 'posts#user', as: :user_posts

  end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  end
