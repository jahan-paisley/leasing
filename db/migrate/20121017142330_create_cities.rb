class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :province

      t.timestamps
    end
    add_index :cities, :province_id
  end
end
