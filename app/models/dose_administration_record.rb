class DoseAdministrationRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  belongs_to :nakshatra_date
end
