class DistributionCenter < ActiveRecord::Base
  has_many :supervisors, :class_name => 'User'
end
