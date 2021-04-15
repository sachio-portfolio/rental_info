class Property < ApplicationRecord
  has_many :stations, dependent: :destroy, inverse_of: :property
  accept_nested_attributes_for :stations
end
