# frozen_string_literal: true

class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'Its the top of the hour, we are doing our hourly task'
    (args[0]).downto(1) do |i|
      puts i
      sleep 1
    end
  end
end
