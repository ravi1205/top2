json.extract! order_card, :id, :user_email, :items, :quantity, :unit_price, :total, :created_at, :updated_at
json.url order_card_url(order_card, format: :json)
