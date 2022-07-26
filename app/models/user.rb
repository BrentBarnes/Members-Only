class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :password, presence: true

  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
