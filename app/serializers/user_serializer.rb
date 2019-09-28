class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:followed_lists
  has_many :lists
end
