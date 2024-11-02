class CreateAdminSalespeople < ActiveRecord::Migration[7.1]
  def change
    create_table :salespeople do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
