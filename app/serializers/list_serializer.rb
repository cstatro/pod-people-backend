class ListSerializer < ActiveModel::Serializer
  attributes :id,:name,:podcasts,:followers,:user_id,:description,:episodes
  # has_many :episodes
end
