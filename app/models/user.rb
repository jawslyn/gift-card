class User < ActiveRecord::Base
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: true }
    validates :gender, presence: true, inclusion: { in: ["Female", "Male"] }
    
    has_many :giftcards, dependent: :destroy
end
