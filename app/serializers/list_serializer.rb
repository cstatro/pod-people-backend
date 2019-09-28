class ListSerializer < ActiveModel::Serializer
  attributes :id,:name,:podcasts,:followers,:user_id,:description,:episodes,:buzzword_generate
  # has_many :episodes
end
