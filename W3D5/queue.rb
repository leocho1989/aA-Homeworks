class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
        self
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end