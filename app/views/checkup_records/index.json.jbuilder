json.array!(@checkup_records) do |checkup_record|
  json.extract! checkup_record, :id, :patient_id, :user_id, :height, :weight, :mental_assessment, :physical_assessment, :notes
  json.url checkup_record_url(checkup_record, format: :json)
end
