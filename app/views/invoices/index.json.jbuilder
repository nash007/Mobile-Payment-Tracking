json.array!(@invoices) do |invoice|
  json.extract! invoice, :amount, :service_type, :organization, :bill_dueon, :service_details, :service_date
  json.url invoice_url(invoice, format: :json)
end
