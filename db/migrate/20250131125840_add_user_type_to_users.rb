class AddUserTypeToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :user_type, :string, default: 'customer', null: false
  end
end
