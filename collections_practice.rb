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
  new_keys_1 = {array1[0].keys.to_a[0] => array2.to_a[0].to_a[0][0]}
  new_data_1 = new_keys_1.merge(array2[0].values.to_a[0])
  new_keys_2 = {array1[1].keys.to_a[0] => array2.to_a[0].to_a[1][0]}
  new_data_2 = new_keys_2.merge(array2[0].values.to_a[1])
  new_data_1[array1[0].keys.to_a[1]] = array1[0].values.to_a[1]
  new_data_2[array1[1].keys.to_a[1]] = array1[1].values.to_a[1]
 [new_data_1, new_data_2]
end

def merge_data_1(array1, array2)
  new_hash_1 = {array1[0].keys[0] => array1[0].values[0]}
  new_hash_2 = {array1[1].keys[0] => array1[1].values[0]}
  new_hash_1 = new_hash_1.merge(array2[0].values[0])
  new_hash_2 = new_hash_2.merge(array2[1].values[0])
  new_hash_1[array1[0].keys[1]] = array1[0].values[1]
  new_hash_2[array1[1].keys[1]] = array1[1].values[1]
  [new_hash_1, new_hash_2]
end

def merge_data_2(array1, array2)
  new_hash_1 = array1[0].merge(array2[0].values[0])
  new_hash_2 = array1[1].merge(array2[1].values[0])
  [new_hash_1, new_hash_2]
end

def find_cool(array)
  result = []
  array.each do |hash|
    hash.each do |key, value|
      if key == :temperature && value == "cool"
        result << hash
      end
    end
  end
  result
end

def organize_schools(array)
  result_hash = {}
  h1 = {}
  h2 = {}
  h3 = {}
  location_array = []
  r1 = []
  r2 = []
  r3 = []
  array.each do |hash|
    hash.each do |school, location|
      location.each do |key, value|
        location_array << value
      end
    end
  end
  location_array.uniq!
  array.each do |hash|
    hash.each do |school, location|
      location.each do |key, value|
        if value == location_array[0]
          r1 << school
          h1[value] = r1
        elsif value == location_array[1]
          r2 << school
          h2[value] = r2
        else value == location_array[2]
          r3 << school
          h3[value] = r3
        end
      end
    end
  end
  result_hash = h1.merge(h2,h3)
end

# your code goes here
