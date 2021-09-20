# frozen_string_literal: true

FormBuilder::Engine.routes.draw do
  resources :locations
  resources :orgs
  resources :users
  resources :versions
  resources :answers
  resources :templates
  resources :questions
  resources :sections
  resources :forms, only: %i[create edit new index show]
  post 'forms/find', to: 'forms#find'
end
