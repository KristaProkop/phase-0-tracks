def build_array(a, b, c)
    array = [a, b, c]
end

def add_array(arr, item)
    arr << item 
end

# array_1 = Array.new
# p array_1
# array_1 = ['fun', 'frustrating', 'exciting', 'difficult', 'rewarding']
# p array_1
# array_1.delete_at(2)
# p array_1
# array_1.insert(2, 'awesome')
# p array_1
# array_1.shift
# p array_1
# p 'Is difficult contained within the array?'
# p array_1.include?('difficult')
# array_2 = ['learning', 'educational', 'motivational']
# new_array = [array_1, array_2].flatten
# # new_array = array_1 + array_2
# p new_array

p build_array(1, "two", nil)
p add_array([], "d")
p add_array(["a", "b", "c", 1, 2], 3)