json.array!(@owners) do |owner|
  json.extract! owner, :id, :Name, :PostalAddress
  json.url owner_url(owner, format: :json)
end
