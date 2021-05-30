# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  # @implemented
  devise_for :users, {}

  # Application
  # @implemented
  root to: 'home#index'
  resources :jobs, only: [:index, :show]
  resources :companies, only: [:index, :show]
  resources :courses, only: [:index]

  # Dashboard
  # @implemented
  namespace :dashboard do
    get '', to: 'home#index'
    resources :jobs
    resources :invoices, only: [:index]
    resources :profiles, only: [:edit, :update]
    resources :accounts, only: [:edit, :update, :destroy]
  end
end
