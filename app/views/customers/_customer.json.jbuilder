json.extract! customer, :id, :name, :phone_num, :order_item_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
