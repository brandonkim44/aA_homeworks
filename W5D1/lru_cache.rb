  class LRUCache
    def initialize(n)
        @underlying_array = []
        @max_cache_size = n
    end

    def count
      @underlying_array.length
    end

    def add(el)
        if self.count < @max_cache_size && @underlying_array.include?(el)
            delete(el)
            @underlying_array << el
        elsif self.count < @max_cache_size
            @underlying_array << el
        else
            rotate(el)
        end
    end

    def show
      @underlying_array
    end

    private
    # helper methods go here!
    def rotate(el)
        @underlying_array.shift
        @underlying_array << el
    end

    def index(el)
       index = @underlying_array.index(el) if @underlying_array.include?(el)
       index
    end

    def delete(el)
        index = index(el)
        @underlying_array.delete_at(index)
    end
  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
