json.array!(@products) do |product|
  json.extract! product, :id, :name, :discription, :weight_lbs, :price, :category_id
  json.url product_url(product, format: :json)
end
