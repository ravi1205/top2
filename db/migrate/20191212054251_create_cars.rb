class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :body_type
      t.integer :door
      t.string :model
      t.decimal :unit_price

      t.timestamps
    end
  end
end
