# frozen_string_literal: true

require_relative("linked_list")

list = OdinLinkedList::LinkedList.new

list.append("Hi")
list.append("There")
puts "2 appends"
list.display
list.prepend("Hey,")
puts "Prepend"
list.display
puts "Size: #{list.size}"
puts "pop"
list.pop
list.display
puts "Size: #{list.size}"

puts ""
list2 = OdinLinkedList::LinkedList.new
list2.prepend("Works?")
list2.display
puts "Size: #{list2.size}"

puts "pop"
list2.pop
list2.display
puts "Size: #{list2.size}"
