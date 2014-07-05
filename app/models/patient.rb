class Patient < ActiveRecord::Base
  belongs_to :distribution_center

  module Gender
    MALE = 'male'
    FEMALE = 'female'
  end

  module BloodGroup
    ALL = ['AB -ve', 'AB +ve', 'A -ve', 'A +ve', 'B -ve', 'B +ve', 'O -ve', 'O +ve']
  end

  validates_presence_of :distribution_center_id, :name, :date_of_birth, :fathers_name, :mobile, :gender
  after_create :populate_registration_number
  
  private

  def populate_registration_number
    self.registration_number = "REG-#{self.distribution_center.id}-#{self.id}"
    self.save!
  end
end
