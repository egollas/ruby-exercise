# Merge information with date reference
def outgoing(incoming)
  identifiers = incoming.each_with_object({}) do |data, result|
    key = data[:date]
    result[key] ||= {}
    result[key] = result[key].merge(data)
    result
  end
  identifiers.values
end
