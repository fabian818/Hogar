class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :service_type_id
      t.string :name
      t.text :description
      t.integer :valoration
      t.integer :company_id

      t.timestamps
    end
  end
end
