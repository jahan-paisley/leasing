class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :idno
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end