json.extract! expence, :id, :amount, :description, :date, :category_id, :payment_mode_id, :inword, :invoice, :user_id, :created_at, :updated_at
json.url expence_url(expence, format: :json)
