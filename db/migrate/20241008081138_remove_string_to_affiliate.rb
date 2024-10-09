class RemoveStringToAffiliate < ActiveRecord::Migration[7.1]
  def change
    remove_column :affiliates, :string, :string
  end
end
