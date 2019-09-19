class User < ApplicationRecord
    has_many :active_podcasts
    has_many :podcasts, through: :active_podcasts
    alias_attribute :listening_to,:podcasts

end
