class User < ApplicationRecord
  has_many :messages
  has_one :venue
  has_many :bookings
  has_many :events, through: :bookings
  has_one :artist_profil
  has_many :reviews_as_review_giver, class_name: "Review", foreign_key: :review_giver_id
  has_many :reviews_as_review_receiver, class_name: "Review", foreign_key: :review_receiver_id
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :email, presence: true
         validates :username, presence: true
         validates :password, presence: true, length: { minimum: 8 }
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :phone_number, presence: true
         validates :status, presence: true
end
