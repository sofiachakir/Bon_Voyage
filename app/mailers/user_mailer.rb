class UserMailer < ApplicationMailer
	default from: 'bonvoyage.infos@gmail.com'

	def welcome_email(user)
		@user = user
		@url = 'https://bon-voyage-app.herokuapp.com/users/signin'
		mail(to: @user.email, subject: 'Bienvenue sur notre site BonVoyage.')
	end

end
