class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.string :firstname
      t.string :lastname
      t.string :identity_no
      t.string :national_no
      t.date :birthdate
      t.string :identity_serial
      t.string :fathername
      t.date :identity_issue_date
      t.string :identity_issue_city
      t.string :legal_type
      t.string :gender
      t.string :marital_status
      t.string :title
      t.string :job_title
      t.string :job_position
      t.string :job_company
      t.string :job_industry
      t.string :education

      t.timestamps
    end
  end
end
