# frozen_string_literal: true

require_relative("node")

# module to store linked lists implementation for odin
module OdinLinkedList
  # linked list of nodes with vals
  class LinkedList
    attr_accessor :size

    def initialize
      @head = OdinLinkedList::Node.new(nil)
      @tail = @head
      @size = 0
    end

    def append(val)
      @tail.next = OdinLinkedList::Node.new(val)
      @tail = @tail.next
      @size += 1
    end

    def prepend(val)
      @head.next = OdinLinkedList::Node.new(val, @head.next)
      @size += 1
    end

    def pop
      return if @size.zero?

      curr = @head
      curr = curr.next until curr.next.next.nil?
      curr.next = nil
      @size -= 1
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
