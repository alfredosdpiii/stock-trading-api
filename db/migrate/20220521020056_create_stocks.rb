class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :company_name
      t.integer :last_price
      t.integer :current_price

      t.timestamps
    end
  end
end
