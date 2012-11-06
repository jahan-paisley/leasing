class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :correspondent
      t.string :idno
      t.string :category
      t.date :due_date
      t.integer :total_amount
      t.references :property
      t.date :sign_date

      t.timestamps
    end
  end
end
