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
puts "append 2"
list.append("There")
list.append("Person")
list.display
puts ""
puts "contains Hi? #{list.contains?('Hi')}"
puts "contains Bye? #{list.contains?('Bye')}"
puts "find Hi: #{list.find('Hi')}"
puts "find Bye: #{list.find('Bye')}"
puts "find Person: #{list.find('Person')}"
puts ""
puts "Insert My at 3"
list.display
list.insert_at("My", 3)
list.display
puts ""
puts "Insert Start at 0"
list.display
list.insert_at("Start", 0)
list.display
puts ""
puts "Insert End at 6"
list.display
list.insert_at("End", 6)
list.display
puts ""
puts "delete at 0"
list.display
list.delete_at(0)
list.display
puts ""
puts "delete at 5"
list.display
list.delete_at(5)
list.display
puts ""
puts "delete at 3"
list.display
list.delete_at(3)
list.display
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
