json.array!(@incomes) do |income|
  json.extract! income, :id, :user_id, :income_source, :amount
  json.url income_url(income, format: :json)
end
