def my_collect(arr)
  i = 0 
  new_arr = []
  while i < arr.length 
    new_arr << yield(arr[i])
    i += 1 
  end
  new_arr
end

students = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']
languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(students) do |name|
  name.split(" ").first
end

my_collect(languages) do |name|
  name.upcase
end

