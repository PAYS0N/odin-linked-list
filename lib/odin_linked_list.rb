# frozen_string_literal: true

require_relative("linked_list")

list = OdinLinkedList::LinkedList.new

list.append("Hi")
list.append("There")
list.display
puts ""
list.prepend("Hey,")
list.display

puts ""
list2 = OdinLinkedList::LinkedList.new
list2.prepend("Works?")
list2.display
