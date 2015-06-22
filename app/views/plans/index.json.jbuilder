json.array!(@plans) do |plan|
  json.extract! plan, :id, :serial_number, :name, :category, :factor, :symptom, :incidence, :situation, :disposal, :remark
  json.url plan_url(plan, format: :json)
end
