class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :gain_id
      t.integer :person_id
      t.float :amount
      t.date :date_to_pay

      t.timestamps
    end
  end
end
