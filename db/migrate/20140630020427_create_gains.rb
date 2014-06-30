class CreateGains < ActiveRecord::Migration
  def change
    create_table :gains do |t|
      t.integer :user_id
      t.float :total
      t.integer :type

      t.timestamps
    end
  end
end
