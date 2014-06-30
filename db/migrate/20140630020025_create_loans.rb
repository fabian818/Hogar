class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :expense_id
      t.integer :person_id
      t.float :amount
      t.date :date_to_pay

      t.timestamps
    end
  end
end
