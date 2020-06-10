class UserMailer < ApplicationMailer
	default from: 'from@example.com'

	def welcome_email(user)
		@user = user
		@url = 'https://monsite.com/'
		mail(to: @user.email, subject: 'Bienvenue sur notre site Bon Voyage.')
	end

end
