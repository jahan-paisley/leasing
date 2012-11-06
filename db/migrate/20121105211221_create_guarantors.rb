class CreateGuarantors < ActiveRecord::Migration
  def change
    create_table :guarantors do |t|
      t.references :person
      t.timestamps
    end
    add_index :guarantors, :person_id
  end
end
