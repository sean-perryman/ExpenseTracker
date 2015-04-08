json.array!(@expenses) do |expense|
  json.extract! expense, :id, :owner_id, :date, :description, :category, :amount, :receipt_image, :notes
  json.url expense_url(expense, format: :json)
end
