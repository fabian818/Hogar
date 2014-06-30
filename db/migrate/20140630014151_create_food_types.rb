class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
