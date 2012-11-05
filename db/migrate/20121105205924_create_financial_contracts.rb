class CreateFinancialContracts < ActiveRecord::Migration
  def change
    create_table :financial_contracts do |t|
      t.integer :correspondent_id
      t.string :no
      t.string :category
      t.date :due_date
      t.integer :total_amount
      t.integer :property_id
      t.date :sign_date

      t.timestamps
    end
  end
end
