class Event < ApplicationRecord
    has_many :guests, class_name: 'User'
    belongs_to :host, class_name: 'user'
end
