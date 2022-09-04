# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  get 'docs' => 'homes#docs', as: 'docs'

  get 'users' => 'users#index', as: 'users'
  get 'users/:id' => 'users#show', as: 'mypage'
  get 'group/new' => 'groups#new', as: 'create_group'
  get 'group/:id' => 'groups#show', as: 'group'


  # group
  resources :groups, only: %i[create update edit index]
end
