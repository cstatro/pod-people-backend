class User < ApplicationRecord
    has_many :active_podcasts
    has_many :podcasts, through: :active_podcasts
    alias_attribute :listening_to,:podcasts
    has_many :lists
    alias_attribute :owned_lists,:lists
    has_many :followers
    validates :username, uniqueness: true
    has_secure_password
    
    def followed_lists
        self.followers.map {|f| f.list}
    end


end
