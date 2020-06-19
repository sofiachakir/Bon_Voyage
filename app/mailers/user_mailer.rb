class UserMailer < ApplicationMailer
  default from: 'bonvoyage.infos@gmail.com'

  def welcome_email(user)
  	@user = user
  @url = 'https://bon-voyage-app.herokuapp.com'
  	@sign_in_url = 'https://bon-voyage-app.herokuapp.com/users/sign_in'
  	mail(to: @user.email, subject: 'Bienvenue sur notre site BonVoyage.')
  end

  def recap_of_the_day_email(user, trip, day)
  @user = user
  @trip = trip
  @day = day
  @events = @trip.events_by_date(day)
  @url = 'https://bon-voyage-app.herokuapp.com'
  @sign_in_url = 'https://bon-voyage-app.herokuapp.com/users/sign_in'
  mail(to: @user.email, subject: 'Récapitulatif de la journée.')
  end

end