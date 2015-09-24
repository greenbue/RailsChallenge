json.array!(@expenses) do |expense|
  json.extract! expense, :id, :user_id, :expense_source, :expense_type, :amount
  json.url expense_url(expense, format: :json)
end
