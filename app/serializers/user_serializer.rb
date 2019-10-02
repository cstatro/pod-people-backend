class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:followed_lists,:lists,:profile_pic,:bio
  has_many :lists
  
end
