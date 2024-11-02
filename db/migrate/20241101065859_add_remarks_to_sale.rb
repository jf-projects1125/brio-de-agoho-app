class AddRemarksToSale < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :remarks, :string
  end
end
