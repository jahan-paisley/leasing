class CreateCorrespondents < ActiveRecord::Migration
  def change
    create_table :correspondents do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
