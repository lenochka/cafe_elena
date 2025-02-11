class Role < ApplicationRecord
  has_many :users
  def self.customer_role
    where(name: 'Customer').first.id
  end
end
