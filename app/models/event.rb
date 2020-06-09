class Event < ApplicationRecord
  belongs_to :trip
  has_many :notes
end
