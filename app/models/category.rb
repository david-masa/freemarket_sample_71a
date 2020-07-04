class Category < ApplicationRecord
  validates :name, :ancestry, :id,  presence: true
  has_many :items
  has_ancestry
end
