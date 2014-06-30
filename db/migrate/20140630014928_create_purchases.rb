class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :hisory_product_id
      t.integer :expense_id
      t.integer :number
      t.float :amount

      t.timestamps
    end
  end
end
