class Patient < ActiveRecord::Base
  belongs_to :distribution_center
end
