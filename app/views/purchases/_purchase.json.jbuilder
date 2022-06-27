json.extract! purchase, :id, :name, :cost, :quantity, :invoice_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
