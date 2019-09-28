class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:followed_lists,:lists
  has_many :lists
  
end
