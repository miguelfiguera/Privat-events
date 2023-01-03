class User < ApplicationRecord
  has_many :hosted_parties, class_name: 'events', foreign_key: 'event_id'
  has_many :invited_parties, class_name: 'events', foreign_key: 'event_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
