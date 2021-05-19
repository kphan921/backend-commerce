class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :orders, :items
end
