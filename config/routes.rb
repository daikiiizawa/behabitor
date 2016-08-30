# frozen_string_literal: true
Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :habits, shallow: true do
    resources :targets, shallow: true do
      resources :descoverlies
      resources :results
    end
  end

end
