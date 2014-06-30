class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :expense_type
      t.integer :user_id
      t.float :total
      t.date :date

      t.timestamps
    end
  end
end
