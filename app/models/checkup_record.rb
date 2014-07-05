class CheckupRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
end
