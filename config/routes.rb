Rails.application.routes.draw do
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  get 'docs' => 'homes#docs', as: 'docs'

  get 'users/:id' => 'users#show', as: 'mypage'
end
