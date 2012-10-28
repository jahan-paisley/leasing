class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string :legal_type
      t.references :person
      t.timestamps
    end
    add_index :customers, :person_id
  end

  def down
  end
end
