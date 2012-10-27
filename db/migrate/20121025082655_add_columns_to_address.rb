class AddColumnsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :postal_code, :string
    add_column :addresses, :unit_name, :string
    add_column :addresses, :building_name, :string
    add_column :addresses, :address_no, :string
  end
end
