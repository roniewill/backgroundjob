class HelloJob < ApplicationJob
  queue_as :default

  def perform
    puts "Hello Background Job!"
  end
end
