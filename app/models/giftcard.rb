class Giftcard < ActiveRecord::Base
    validates :title, presence: true
    validates :message, presence: true
    validates :user_id, presence: true
    
    belongs_to :user
end
