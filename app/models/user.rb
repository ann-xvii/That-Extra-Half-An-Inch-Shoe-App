class User
  include Mongoid::Document
  field :name, type: String
  has_many :shoes
end