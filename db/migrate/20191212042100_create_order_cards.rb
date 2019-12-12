class CreateOrderCards < ActiveRecord::Migration[6.0]
  def change
    create_table :order_cards do |t|
      t.string :user_email
      t.string :items
      t.decimal :quantity
      t.decimal :unit_price
      t.decimal :total

      t.timestamps
    end
  end
end
