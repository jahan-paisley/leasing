class CreateKases < ActiveRecord::Migration
  def change
    create_table :kases do |t|
      t.date :start_date
      t.date :finish_date
      t.references :customer
      t.references :user
      t.string :status
      t.integer :no
      t.date :receipt_date

      t.timestamps
    end
    add_index :kases, :customer_id
    add_index :kases, :user_id
  end
end
