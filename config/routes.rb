Rails.application.routes.draw do
  root 'favorites#index'
  get 'mypage' => 'users#show', as: :mypage
  post 'favorites/create/:id' => 'favorites#create', as: "create_favor"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
