class AddColumnToSale < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :transaction_date, :datetime
    add_column :sales, :payment_method, :string
    add_column :sales, :purchase_share, :integer
    add_column :sales, :amount, :integer
    add_column :sales, :total_amount, :integer
    add_column :sales, :payout, :integer
  end
end
