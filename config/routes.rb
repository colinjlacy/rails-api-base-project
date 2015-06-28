require 'api_constraints'

Rails.application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"
  # devise_for :users
  # resources :drafts
  #
  # resources :stories
  #
  # root to: "stories#index"

	namespace :api, defaults: {format: :json}, constraints: {subdomain: "api"}, path: "/" do

		scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
			resources :users, :only => [:index, :show, :create, :update, :destroy]
		end

	end

end
