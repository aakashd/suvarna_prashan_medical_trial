class DistributionCenter < ActiveRecord::Base
  has_many :supervisors, :class_name => 'User'
  has_many :patients
end
