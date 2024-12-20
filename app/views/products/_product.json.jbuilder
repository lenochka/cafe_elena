json.extract! product, :id, :name, :photo_url, :price, :description, :weight, :created_at, :updated_at
json.url product_url(product, format: :json)
