class CreateDistributionCenters < ActiveRecord::Migration
  def change
    create_table :distribution_centers do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
