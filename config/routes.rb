Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :blogs
  root "blogs#index"
  if Rails.env.development?
   mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
