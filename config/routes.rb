# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resources :jobs, only: %i[index show]
  resources :companies, only: %i[index show]
  resources :courses, only: %i[index]

  # Actions
  # @implemented
  resources :job_alerts, only: [:create]

  # Dashboard
  # @implemented
  namespace :dashboard do
    get '', to: 'home#index'
    resources :jobs
    resources :invoices, only: %i[index]
    resources :profiles, only: %i[edit update]
    resources :accounts, only: %i[edit update destroy]
  end

  # Blog => https://blog.application.com.br
  # @implemented
  namespace :blog, constraint: { subdomain: 'blog' }, path: '/' do
    # some code here
  end

  # API => https://api.application.com.br/
  # @implemented
  namespace :api, constraint: { subdomain: 'api' }, path: '/' do
    namespace :v1 do
      defaults format: :json do
        # some json code from here
      end
    end

    namespace :v2 do
      defaults format: :xml do
        # some xml code from here
      end
    end
  end
end
