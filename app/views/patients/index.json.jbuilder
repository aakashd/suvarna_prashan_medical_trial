json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :date_of_birth, :fathers_name, :mothers_name, :address, :mobile, :landline, :present_complaints, :registration_number, :gender, :blood_group, :distribution_center_id
  json.url patient_url(patient, format: :json)
end
