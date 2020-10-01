def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort{|a, b| a < b ? 1 : -1}
end

# def sort_array_desc(array)
#   array.sort.reverse
# end

def sort_array_char_count(array)
  array.sort{|a, b| a.length > b.length ? 1 : -1}
end

def swap_elements(array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  array
end

def swap_elements_from_to(array, index, destination_index)
  temp = array[index]
  array[index] = array[destination_index]
  array[destination_index] = temp
  binding.pry
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |word| 
    word[2] = "$"
    new_array << word
  end
  array
end

def find_a(array)
  array.select{|word| word.start_with?('a')}
end

def sum_array(array)
  array.inject{|sum, x| sum + x}
end

# def sum_array(array)
#   total = 0
#   array.each{|num| total += num}
#   total
# end

def add_s(array)
  array.each_with_index.collect{|word, index| index == 1 ? word : word << 's' }
end