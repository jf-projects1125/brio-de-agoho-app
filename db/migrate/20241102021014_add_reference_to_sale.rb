class AddReferenceToSale < ActiveRecord::Migration[7.1]
  def change
    add_reference :sales, :salespeople, null: true, foreign_key: true
    remove_column :sales, :salesperson, :string
  end
end
