json.array!(@price_plans) do |price_plan|
  json.extract! price_plan, :id, :months, :price
  json.url price_plan_url(price_plan, format: :json)
end
