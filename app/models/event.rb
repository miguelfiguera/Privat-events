class Event < ApplicationRecord
    has_many :attendees, through: :invitations, source: :user
    has_many :invitations
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

    scope :past, -> { where("date < ?", Time.current) }
    scope :upcoming, -> { where("date >= ?", Time.current) }

end
