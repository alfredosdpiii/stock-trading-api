class AddRequiredColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, null: false, default: 'trader'
    add_column :users, :approved, :boolean, null: false, default: false
    add_column :users, :balance, :int, null: false, default: 999_999_999
  end
end
