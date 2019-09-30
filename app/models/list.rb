class List < ApplicationRecord
    has_many :podcast_list_joins
    has_many :podcasts, through: :podcast_list_joins
    has_many :episode_list_joins
    has_many :episodes, through: :episode_list_joins
    has_many :followers
    belongs_to :user


    def buzzword_generate
        arr = [self.podcasts.pluck(:genre),self.episodes.joins(:podcast).pluck(:genre)].flatten.sample(5).uniq
    end

    def search_arr
        [self.podcasts.pluck(:genre),self.episodes.joins(:podcast).pluck(:genre),self.podcasts.pluck(:description).map {|d|d.split(' ')}, self.episodes.pluck(:description).map { |d| d.split(' ')}].flatten.map {|s| s.downcase}
    end



end
