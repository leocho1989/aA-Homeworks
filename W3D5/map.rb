class Map

    def initialize
        @map = Array.new()
    end

    def set(key,value)
        if (0...@map.length).all? {|i| @map[i][0]!=key} 
            @map << [key,value]
        else
            (0...@map.length).each do |num|
                if @map[num][0] == key
                    @map[num][1] = value
                end
            end
        end
        @map
    end

    def get(key)
        (0...@map.length).each do |num|
            return @map[num][1] if @map[num][0] == key
        end
        nil
    end

    def delete(key)
        new_arr =[]
        (0...@map.length).each do |num|
            new_arr << @map[num] if @map[num][0] != key
        end
        new_arr
    end

    def show
        return @map
    end
end
