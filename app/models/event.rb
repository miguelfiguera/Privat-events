class Event < ApplicationRecord
    has_many :guests, class_name: 'User', foreign_key: 'user_id'
    belongs_to :host, class_name: 'User', foreign_key: 'user_id'

end
