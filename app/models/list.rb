class List < ApplicationRecord
    has_many :podcast_list_joins, dependent: :destroy
    has_many :podcasts, through: :podcast_list_joins
    has_many :episode_list_joins, dependent: :destroy
    has_many :episodes, through: :episode_list_joins
    has_many :followers,dependent: :destroy
    belongs_to :user


    def buzzword_generate
        arr = [self.podcasts.pluck(:genre),self.episodes.joins(:podcast).pluck(:genre)].flatten.sample(5).uniq
    end

    #building a single array of words to facilitate searching/sorting lists
    def search_arr
        [self.podcasts.pluck(:genre),self.episodes.joins(:podcast).pluck(:genre),self.podcasts.pluck(:description,:name).flatten.map {|d|d.split(' ')}, self.episodes.pluck(:description,:title).flatten.map { |d| d.split(' ')}].flatten.map {|s| s.downcase}
    end
    
    def string_relevancy str
        self.search_arr.count(str.downcase)
    end
    def relevancy_search arr 
        arr.map {|s| string_relevancy(s)}.reduce(:+)
    end
    def self.sort_by_relevancy arr 
        List.all.filter { |l| l.relevancy_search(arr) != 0}.sort_by {|l| l.relevancy_search(arr)}.reverse
    end

end
