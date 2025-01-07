class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :price, presence: true
end
