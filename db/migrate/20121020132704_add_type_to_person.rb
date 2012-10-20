class AddTypeToPerson < ActiveRecord::Migration
  def change
    add_column :persons, :type, :string
  end
end
