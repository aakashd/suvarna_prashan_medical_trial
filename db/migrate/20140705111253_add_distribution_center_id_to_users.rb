class AddDistributionCenterIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :distribution_center_id, :integer
  end
end
