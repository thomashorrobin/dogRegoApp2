json.array!(@dogs) do |dog|
  json.extract! dog, :id, :Name, :Birthday
  json.url dog_url(dog, format: :json)
end
