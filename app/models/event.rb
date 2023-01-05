class Event < ApplicationRecord
    has_many :attendee, class_name: 'User', foreign_key: 'user_id', through: :invitations
    belongs_to :host, class_name: 'User', foreign_key: 'user_id'

end
