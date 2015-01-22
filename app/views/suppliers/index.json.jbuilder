json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :phone, :email, :user_id
  json.url supplier_url(supplier, format: :json)
end
