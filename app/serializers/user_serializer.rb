class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :orders, :items, :reviews
end
