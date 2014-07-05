class CreateCheckupRecords < ActiveRecord::Migration
  def change
    create_table :checkup_records do |t|
      t.references :patient, index: true
      t.references :user, index: true
      t.float :height
      t.float :weight
      t.text :mental_assessment
      t.text :physical_assessment
      t.text :notes

      t.timestamps
    end
  end
end
