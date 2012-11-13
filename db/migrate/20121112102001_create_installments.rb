class CreateInstallments < ActiveRecord::Migration
  def change
    create_table :installments do |t|
      t.integer :amount
      t.date :due_date
      t.belongs_to :kase
      t.boolean :paid

      t.timestamps
    end
  end
end
