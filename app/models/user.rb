class User < ApplicationRecord
  has_many :hosted_parties, class_name: 'Event'
  has_many :attended_event, class_name: 'Event', through: :invitations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
