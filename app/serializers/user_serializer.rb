class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :is_admin
end
