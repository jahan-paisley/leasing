class RemoveLegalTypeFromPerson < ActiveRecord::Migration
  def change
    remove_column :persons, :legal_type
  end

end
