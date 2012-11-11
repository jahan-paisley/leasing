class AddGuarantorsM2MAssocToContract < ActiveRecord::Migration
  def change
    create_table :contract_guarantors, :id => false do |t|
      t.integer :contract_id
      t.integer :guarantor_id
    end
  end
end
