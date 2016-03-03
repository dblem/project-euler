def number_to_array(num)
  start_array = num.to_s.split(//)
  final_array = Array.new
  start_array.each do |x|
    final_array << x.to_i
  end
  final_array
end

def array_iteration(num)
  num_array = number_to_array(num)
  final_array = [7, 3, 1, 6, 7, 1, 7, 6, 5, 3, 1, 3, 3]
  final_product = 0
  temp_array = final_array
  temp_product = 0
  num_array.each do |x|
    temp_array << x
    temp_array.shift
    temp_product = temp_array.reduce(:*)
    final_product = final_array.reduce(:*)
    final_array = temp_array if temp_product > final_product
  end
  final_product
end
