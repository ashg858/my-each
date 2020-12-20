def my_each
  collection = [1, 2, 3, 4]
  while collection.length < 4 do
    yield (collection)
  end
end

def my_each(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    return collection [i] if yield(collection)
    i = i + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
