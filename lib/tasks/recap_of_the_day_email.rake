namespace :recap_of_the_day_email do
  desc "Send a recap of email of the day's activities"
  task recap_of_the_day: :environment do

    User.all.each do |user|
      user.trips.each do |trip|
        if trip.is_ongoing?
          UserMailer.recap_of_the_day_email(user, trip, Date.today).deliver_now
        end
      end

    end

  end
end
