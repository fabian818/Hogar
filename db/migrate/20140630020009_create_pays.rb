class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.integer :debt_id
      t.date :date
      t.integer :expense_id
      t.float :amount

      t.timestamps
    end
  end
end
