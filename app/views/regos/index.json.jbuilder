json.array!(@regos) do |rego|
  json.extract! rego, :id, :RegoLength, :StartDate, :EndDate
  json.url rego_url(rego, format: :json)
end
