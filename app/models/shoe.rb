class Shoe
  include Mongoid::Document
  field :name, type: String
  field :brand, type: String
  field :season, type: String
  field :origin, type: String
  field :heel, type: Float
  field :price, type: Float
  belongs_to :user
end
