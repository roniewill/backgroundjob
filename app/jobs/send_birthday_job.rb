class SendBirthdayJob < ApplicationJob
  queue_as :mailers

  def perform(user_id)
    UserMailer.birthday(user_id).deliver_now
    puts "Email successfully sent to user: #{user_id}"
  end
end
