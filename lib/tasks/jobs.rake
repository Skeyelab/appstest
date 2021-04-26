# frozen_string_literal: true

# lib/tasks/jobs.rake
namespace :jobs do
  desc 'sidekiq'
  task work: :environment do
    exec('bundle exec sidekiq')
  end
end
