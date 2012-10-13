class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :identity_no
      t.string :national_no
      t.datetime :birthdate
      t.string :identity_serial
      t.string :fathername
      t.date :identity_issue_date
      t.string :identity_issue_city
      t.string :email
      t.string :legal_type
      t.string :gender
      t.string :marital_status

      t.timestamps
    end
  end
end
