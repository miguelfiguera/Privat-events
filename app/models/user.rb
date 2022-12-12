class User < ApplicationRecord
  has_many :hosted_parties, class_name: 'events'
  has_many :invited_parties, class_name: 'events'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
