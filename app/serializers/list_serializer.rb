class ListSerializer < ActiveModel::Serializer
  attributes :id,:name,:episodes,:podcasts,:followers,:user_id
end
