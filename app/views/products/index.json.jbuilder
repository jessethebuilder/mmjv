json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :product_type, :thc, :cbd, :butane, :price
  json.url product_url(product, format: :json)
end
