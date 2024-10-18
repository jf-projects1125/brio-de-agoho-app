class AddColumnToAffiliate < ActiveRecord::Migration[7.1]
  def change
    add_column :affiliates, :bank, :string
    add_column :affiliates, :account_name, :string
    add_column :affiliates, :account_no, :string
  end
end
