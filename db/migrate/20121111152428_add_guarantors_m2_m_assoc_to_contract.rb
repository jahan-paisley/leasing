class AddGuarantorsM2MAssocToContract < ActiveRecord::Migration
  def change
    create_table :contract_guarantors, :id => false do |t|
      t.integer :contract_id
      t.integer :guarantor_id
    end
    add_index :contract_guarantors,[:contract_id, :guarantor_id]
  end
end
