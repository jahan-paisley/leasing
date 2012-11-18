class AddCategoryToGuarantor < ActiveRecord::Migration
  def change
    add_column :guarantors, :category, :string
  end
end
