class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.string :lastname
      t.string :firstname
      t.string :contact_no
      t.string :email
      t.references :affiliate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
