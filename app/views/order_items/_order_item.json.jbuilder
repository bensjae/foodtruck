json.extract! order_item, :id, :customer, :cost, :food_item_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
