class UserMailer < ApplicationMailer

    def welcome_mailer(user_id)
			@user =  User.find(user_id)
			@url = 'mysite.com'
			mail(to: @user.email, subject: 'Welcome to Background Jobs Site!')
    end

		def birthday(user_id)
			@user = User.find(user_id)
			mail(to: @user.email, subject: "Happy Birthday to You #{@user.email}")
		end
end
