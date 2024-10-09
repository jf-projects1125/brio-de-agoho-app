class AddFullnameToAffiliate < ActiveRecord::Migration[7.1]
  def change
    add_column :affiliates, :fullname, :string
  end
end
