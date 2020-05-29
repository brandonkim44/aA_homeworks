  #Exercise 1

  class Stack
    def initialize
      @array = []
    end

    def push(el)
      @array << el
    end

    def pop
      @array.pop
    end

    def peek
      @array[-1]
    end
  end

  #Exercise 2

  class Queue
    def initialize
      @array = []
    end

    def enqueue(el)
      @array.unshift(el)
    end

    def dequeue
      @array.pop
    end

    def peek
      @array[-1]
    end
  end

  

