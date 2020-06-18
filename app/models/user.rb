class User < ApplicationRecord
	after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips, dependent: :destroy

  has_one_attached :avatar

  def welcome_send
		UserMailer.welcome_email(self).deliver_now
	end

  def completed_profile?
    self.user_name.present?
  end

  def upcoming_trip
  	unless self.trips.empty?
  		upcoming_trips = []
  		trips = self.trips.order(start_date: :desc)
  		trips.each do |trip|
  			upcoming_trips << trip if trip.start_date > Time.now
  		end
  		upcoming_trips[0]
  	end
  end

  def previous_trips
  	unless self.trips.empty?
  		previous_trips = []
  		trips = self.trips.order(:start_date)
  		trips.each do |trip|
  			previous_trips << trip if trip.start_date < Time.now
  		end
  		previous_trips
  	end
  end

end
