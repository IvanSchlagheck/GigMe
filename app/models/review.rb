class Review < ApplicationRecord
  belongs_to :review_giver, class_name: "User"
  belongs_to :review_receiver, class_name: "User"
end
