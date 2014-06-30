class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.integer :user_id
      t.integer :gain_id
      t.float :amount
      t.string :date

      t.timestamps
    end
  end
end
