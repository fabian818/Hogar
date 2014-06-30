class CreateRealProducts < ActiveRecord::Migration
  def change
    create_table :real_products do |t|
      t.integer :product_id
      t.integer :company_id
      t.float :actual_price

      t.timestamps
    end
  end
end
