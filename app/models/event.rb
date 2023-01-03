class Event < ApplicationRecord
    has_many :guests, class_name: 'user', foreign_key: 'user_id'
    belongs_to :host, class_name: 'user', foreign_key: 'user_id'
end
