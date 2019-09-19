class List < ApplicationRecord
    has_many :podcast_list_joins
    has_many :podcasts, through: :podcast_list_joins
    has_many :episode_list_joins
    has_many :episodes, through: :episode_list_joins
    has_many :followers
    belongs_to :user



end
