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

  #Exercise 3

  class Map
    def initialize
      @array = []
    end

    def set(key, value)
        index_of_pair = @array.index { |pair| pair.first == key }
        if index_of_pair
            @array[index_of_pair][1] = value #why didn't .last work?
        else 
            @array.push([key, value])
        end
    end

    def get(key)
      @array.each { |pair| return pair.last if pair.first == key }

    end

    def delete(key)
      index_of_pair = @array.index { |pair| pair.first == key }
      @array.delete_at(index_of_pair)
    end

    def show
      return @array
    end
  end


