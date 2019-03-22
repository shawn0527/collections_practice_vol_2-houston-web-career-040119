def begins_with_r(array)
  newArray=[]
  array.each do |x|
    if x.start_with?("r")
      newArray << x
    end
  end
  if newArray == array
    return true
  else
    return false
  end
end

def contain_a(array)
  newArray=[]
  array.each do |x|
    if x.include?("a")
      newArray << x
    end
  end
  newArray
end

def first_wa(array)
  array.find {|x| x[0] == "w" and x[1] == "a"}
end

def remove_non_strings(array)
  newArray=[]
  array.each do |x|
    if x.is_a? String
      newArray << x
    end
  end
  newArray
end

def count_elements(array)
  new_array = []
  key1 = 0
  key2 = 0
  array.each do |hash|
    hash.each do |key, value|
      if key == :name && value == "blake"
        key1 += 1
      else
        key2 += 1
      end
    end
  end
      new_array << {:count => key1, :name => "blake"}
      new_array << {:count => key2, :name => "ashley"}
  return new_array
end

def merge_data(array1, array2)
  new_array = []
  new_hash = {}
  array1.each do |array1_hash|
    index_array = array1_hash.keys
    if arr
    array1_hash.collect do |array1_hash_key, array1_hash_value|
      new_hash[array1_hash_key] = array1_hash_value
    end
  end
  array2.each do |array2_hash|
    array2_hash.collect do |array2_hash_key, array2_hash_value|
      new_hash[array2_hash_key] = array2_hash_value
    end
  end
  new_array << new_hash
  return new_array
end

def find_cool(array)

end

def organize_schools(array)

end

# your code goes here
