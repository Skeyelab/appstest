Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'
  authenticate :admin_user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
