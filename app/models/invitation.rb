class Invitation < ApplicationRecord
    belongs_to :attendee, class_name: 'user', foreign_key: 'user_id'
    belongs_to :event
        
    end
end
