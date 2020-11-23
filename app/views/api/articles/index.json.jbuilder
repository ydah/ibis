json.set! :articles do
  json.array! @articles do |article|
    json.extract! article, :id, :title
  end
end
