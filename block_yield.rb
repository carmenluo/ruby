def print_result
  result_from_block =yield
  puts "print_result: #{result_from_block}"
end

# this is going to print the number 
print_result{3 * 3}

def send_params
  yield 3
end

send_params do |item|
  puts "#{item * item}"
end

shopping_list = [:milk, :egg, :cheese]
print_result do 
  important_item = shopping_list.sample
  "I hope I don't forget #{important_item}"
end