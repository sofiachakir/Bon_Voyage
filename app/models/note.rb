class Note < ApplicationRecord
  belongs_to :event
  has_one_attached :image
end
