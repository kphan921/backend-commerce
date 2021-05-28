class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :price, :reviews
end
