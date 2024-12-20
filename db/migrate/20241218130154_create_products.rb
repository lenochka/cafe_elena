class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo_url
      t.float :price
      t.text :description
      t.float :weight

      t.timestamps
    end
  end
end
