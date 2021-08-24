def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  array = []
  row_index = 0
  while row_index < src.count do 
    element_count = 0
    while element_count < src[row_index].count do
      if src[row_index][element_count].instance_of?(String)
        array << src[row_index][element_count]
      end
      element_count += 1
    end
    row_index += 1
  end
  array.join(' ')
end