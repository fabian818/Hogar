class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :product_id
      t.integer :food_type_id
      t.string :measurement

      t.timestamps
    end
  end
end
