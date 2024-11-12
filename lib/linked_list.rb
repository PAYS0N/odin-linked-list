# frozen_string_literal: true

require_relative("node")

module OdinLinkedList
  # linked list of nodes with vals
  class LinkedList
    def initialize
      @head = OdinLinkedList::Node.new(nil)
      @tail = @head
    end

    def append(val)
      @tail.next = OdinLinkedList::Node.new(val)
      @tail = @tail.next
    end

    def prepend(val)
      @head.next = OdinLinkedList::Node.new(val, @head.next)
    end

    def display
      curr = @head.next
      until curr.nil?
        puts "Val: #{curr.val}"
        curr = curr.next
      end
    end
  end
end
