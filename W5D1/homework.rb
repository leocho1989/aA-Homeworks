  class LRUCache
    def initialize(num)
        @cache = Array.new(num)
    end

    def count
        cache.count {|ele| ele!=nil}
      # returns number of elements currently in cache
    end

    def add(el)
        if cache.include?(el) == false
            if cache.count < cache.size
                cache.push(el)
            else
                cache.shift
                cache.push(el)
            end
        else
            cache.delete(el)
            cache.push(el)
        end
      # adds element to cache according to LRU principle
    end

    def show
        (0...cache.size).each do |ele| 
            puts ele
        end
            # shows the items in the cache, with the LRU item first
    end

    private
    attr_reader :cache
    # helper methods go here!

  end