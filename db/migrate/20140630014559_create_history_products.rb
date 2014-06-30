class CreateHistoryProducts < ActiveRecord::Migration
  def change
    create_table :history_products do |t|
      t.integer :real_product_id
      t.date :date
      t.float :price

      t.timestamps
    end
  end
end
