# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks

  # post request for marking complete on task
  post 'tasks/:id/toggle', to: 'tasks#toggle'

  # Defines the root path route ("/")
  root 'tasks#index'
end
