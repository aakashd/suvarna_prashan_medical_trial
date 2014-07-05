json.array!(@nakshatra_dates) do |nakshatra_date|
  json.extract! nakshatra_date, :id, :nakshatra_date
  json.url nakshatra_date_url(nakshatra_date, format: :json)
end
