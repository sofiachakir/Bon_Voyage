class Event < ApplicationRecord
  belongs_to :trip
  has_many :notes, dependent: :destroy

  validate :start_time_must_be_before_end_time

  def start_time_must_be_before_end_time
  	unless self.start_time.nil? || self.end_time.nil?
	    if self.end_time < self.start_time
	      errors.add(:end_time, "must be posterior to start_time")
	    end
	  end
  end

end
