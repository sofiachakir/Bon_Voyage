class Trip < ApplicationRecord
  require 'pixabay'
	belongs_to :user
  has_many :events, dependent: :destroy

  has_one_attached :picture

  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :start_must_be_before_end_date


  def start_must_be_before_end_date
    if self.end_date < self.start_date
      errors.add(:end_date, "must be posterior to start_date")
    end
  end

# cette méthode nous renvoie le nombre de jour que l'on a dans un voyage
  def duration
    ((self.end_date - self.start_date) / 60 / 60 / 24).to_i
  end

# # cette méthode nous renvoie le nombre de semaine que l'on a dans un voyage
#   def weeks
# # si semaine complète %7 = 0
#     if self.duration % 7 == 0
#       self.duration / 7
# # si semaine incomplète %7 != 0 on ajoute une semaine en plus
#     else
#       (self.duration / 7) + 1
#     end
#   end

  def days
    days = []
    self.duration.times do |d|
      days << (self.start_date + d.days)
    end
    days
  end

  def week_weeks_days
    week_weeks_days = []
    current_week = []
    self.days.each_with_index do |day, index|
      current_week << day
  #si day == Monday il faut passer à la semaine suivante
      if day.strftime('%A') == "Sunday" || index == self.days.length-1
        week_weeks_days << current_week
        current_week = []
      end
    end
    week_weeks_days
  end

  def events_by_date(date)
    # Cette méthode renvoie un array de events qui ont lieu à la date 'date'
    events_by_date = []
    self.events.each do |event|
      unless event.start_time.nil?
        if event.start_time.strftime('%D') == date.strftime('%D')
          events_by_date << event
        end
      end
    end
    events_by_date
  end

  def country_picture
    # Cette méthode renvoie une image en fonction du country name du trip
    if self.country_name.nil?
      img_url = "https://images.pexels.com/photos/346768/pexels-photo-346768.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    else
      client = Pixabay.new
      res = client.photos(q: self.country_name, safesearch: true, page: 1, per_page: 30)
      img = res["hits"].first
      img_url = img['largeImageURL']
    end
  end

  def is_past?
    self.start_date < Time.now
  end

end