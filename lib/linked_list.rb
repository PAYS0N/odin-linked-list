# frozen_string_literal: true

require_relative("node")

# module to store linked lists implementation for odin
module OdinLinkedList
  # linked list of nodes with vals
  class LinkedList
    attr_accessor :size, :head, :tail

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

    def at(index)
      return nil if index.negative?
      return nil unless index < size

      curr = @head
      (index + 1).times do
        curr = curr.next
      end
      curr.val
    end

    def pop
      return if @size.zero?

      curr = @head
      curr = curr.next until curr.next.next.nil?
      curr.next = nil
      @size -= 1
    end

    def display
      puts self
    end

    def to_s
      arr = []
      curr = @head
      until curr.next.nil?
        arr << "(#{curr.val}) -> "
        curr = curr.next
      end
      arr << "(#{curr.val}) -> nil"
      arr.join
    end
  end
end
