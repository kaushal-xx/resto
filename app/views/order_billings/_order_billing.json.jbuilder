json.extract! order_billing, :id, :order_billingscol, :billing_amount, :billing_method, :billing_status, :discount, :tax, :note, :created_at, :updated_at
json.url order_billing_url(order_billing, format: :json)
