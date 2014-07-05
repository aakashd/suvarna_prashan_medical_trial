class CreateNakshatraDates < ActiveRecord::Migration
  def change
    create_table :nakshatra_dates do |t|
      t.date :nakshatra_date

      t.timestamps
    end
  end
end
