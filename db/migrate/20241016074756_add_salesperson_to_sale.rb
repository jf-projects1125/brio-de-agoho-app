class AddSalespersonToSale < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :salesperson, :string
  end
end
