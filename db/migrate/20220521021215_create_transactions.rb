class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.bigint 'user_id', null: false
      t.bigint 'stock_id', null: false
      t.decimal 'stock_price'
      t.string :transaction_type, null: false
      t.integer :stock_quantity
      t.index ['stock_id'], name: 'index_transactions_on_stock_id'
      t.index ['user_id'], name: 'index_transactions_on_user_id'

      t.timestamps
    end
  end
end
