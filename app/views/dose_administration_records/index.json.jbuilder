json.array!(@dose_administration_records) do |dose_administration_record|
  json.extract! dose_administration_record, :id, :patient_id, :user_id, :nakshatra_date_id
  json.url dose_administration_record_url(dose_administration_record, format: :json)
end
