class Stack
    def initialize
        @stack = []
      # create ivar to store stack here!
    end

    def push(el)
        @stack << ele
      # adds an element to the stack
    end

    def pop
        @stack.pop
      # removes one element from the stack
    end

    def peek
        @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end
  
  
  class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def pop
        @queue.shift
    end

    def peek
        @queue[-1]
    end
  end

  class Map
    def initialize
        @map = []
    end

    def set(key, value)
        if @map.any? {|ele| key == ele[0]}
            @map[@map.index {key == ele[0]}][1] = value
        else
            @map << [key,value]
        end
        #@map << [key,value] if !@map.inlcude?([key,value])
    end

    def get(key)
        @map.each { |ele| return ele[1] if key == ele[0]}
    end

    def delete(key)
        @map.each_with_index { |ele, idx| @map.delete_at(idx) if key == ele[0]}
    end

    def show
        @map
    end
  end