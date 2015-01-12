json.array!(@iinvoices) do |iinvoice|
  json.extract! iinvoice, :id, :date, :company, :tax, :salesperson
  json.url iinvoice_url(iinvoice, format: :json)
end
