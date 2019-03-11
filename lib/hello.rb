names = ["Tim", "Tom", "Jim"]

def hello_t(names_list)
  if block_given?
    for name in names_list
      yield name
    end
  else
    puts "Hey! No block was given!\n"
  end
end

hello_t(names) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}!"
  end
end