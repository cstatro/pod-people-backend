class Follower < ApplicationRecord
    belongs_to :user
    belongs_to :list
    validates_uniqueness_of :user_id, scope: :list_id
end
