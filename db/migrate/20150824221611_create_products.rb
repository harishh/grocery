class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :discription
      t.integer :weight_lbs
      t.integer :price
      t.integer :category_id
      

      t.timestamps null: false
    end
  end
end
