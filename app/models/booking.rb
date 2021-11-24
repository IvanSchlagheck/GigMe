class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :messages

  enum status: { pending: 0, confirmed: 1, rejected: 2, past: 3, messaging: 4 }
end
