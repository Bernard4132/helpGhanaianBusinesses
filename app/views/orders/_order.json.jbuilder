json.extract! order, :id, :paymentplan, :name, :email, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
