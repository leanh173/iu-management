class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :short_name
      t.date :start_date
      t.string :status
      t.date :dob
      t.string :address
      t.string :phone
      t.string :email
      t.string :skype
      t.string :bank_info
      t.text :note

      t.timestamps
    end
  end
end
