class CreateGuarantees < ActiveRecord::Migration
  def change
    create_table :guarantees do |t|
      t.references :FinancialContract
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
