class User < ApplicationRecord
  has_many :events
  has_many :invitations
  has_many :attended_events, through: :invitations, source: :event
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
