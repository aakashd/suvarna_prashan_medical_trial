class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.date :date_of_birth
      t.string :fathers_name
      t.string :mothers_name
      t.text :address
      t.string :mobile
      t.string :landline
      t.text :present_complaints
      t.string :registration_number
      t.string :gender
      t.string :blood_group
      t.references :distribution_center, index: true

      t.timestamps
    end
  end
end
