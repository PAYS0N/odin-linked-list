# frozen_string_literal: true

require_relative("linked_list")

list = OdinLinkedList::LinkedList.new

puts "2 appends"
list.append("Hi")
list.append("There")
list.display
puts ""
puts "Prepend"
list.prepend("Hey,")
list.display
puts ""
puts "Size: #{list.size}"
puts ""
puts "At -1: #{list.at(-1)}"
puts "At 0: #{list.at(0)}"
puts "At 1: #{list.at(1)}"
puts "At 2: #{list.at(2)}"
puts "At 3: #{list.at(3)}"
puts ""
puts "pop"
list.pop
list.display
puts ""
puts "Size: #{list.size}"
puts ""

puts "Prepend first"
list2 = OdinLinkedList::LinkedList.new
list2.prepend("Works?")
list2.display
puts ""
puts "Size: #{list2.size}"

puts "pop"
list2.pop
list2.display
puts "Size: #{list2.size}"
