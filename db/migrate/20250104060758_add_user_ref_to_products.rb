class AddUserRefToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :user, foreign_key: true
  end
end