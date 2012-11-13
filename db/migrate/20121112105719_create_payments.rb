class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :kase
      t.integer :amount
      t.date :payment_date
      t.string :origin_account
      t.string :origin_bank
      t.string :benef_account
      t.string :payment_method
      t.string :idno

      t.timestamps
    end
    add_index :payments, :kase_id
  end
end
