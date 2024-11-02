class FixColumnOfSale < ActiveRecord::Migration[7.1]
  def change
    rename_column :sales, :salespeople_id, :salesperson_id
  end
end
