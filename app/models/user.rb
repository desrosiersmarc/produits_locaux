class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  validates :lastname, presence: true, length: {minimum: 2, maximum: 50}
  validates :firstname, presence: true, length: {minimum: 2, maximum: 50}
  validates :mobil_phone, presence: true,
                         length: {minimum: 10, maximum: 15},
                         numericality: true


end
