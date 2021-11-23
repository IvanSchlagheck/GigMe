class Event < ApplicationRecord
  belongs_to :venue
  has_one :booking
end
