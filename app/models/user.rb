class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :password, presence: true, lenght: { minimum: 8 }
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :phone_number, presence: true
         validates :status, presence: true
end
