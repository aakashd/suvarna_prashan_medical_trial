class CreateDoseAdministrationRecords < ActiveRecord::Migration
  def change
    create_table :dose_administration_records do |t|
      t.references :patient, index: true
      t.references :user, index: true
      t.references :nakshatra_date, index: true

      t.timestamps
    end
  end
end
