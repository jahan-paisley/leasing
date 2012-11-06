class CreateGuarantees < ActiveRecord::Migration
  def change
    create_table :guarantees do |t|
      t.references :Contract
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
