class CreateHistoryServices < ActiveRecord::Migration
  def change
    create_table :history_services do |t|
      t.integer :service_id
      t.integer :expense_id
      t.float :amount
      t.integer :month

      t.timestamps
    end
  end
end
