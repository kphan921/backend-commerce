class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :order, :item
end
