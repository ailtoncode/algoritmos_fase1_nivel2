class BubbleSort
    
    :list

    def initialize
        @list = [80, 9, 8, 7, 6, 6, 5, 4, 3, 2, 0, 2, 117]
    end

    def sorting
        length = @list.length-1
        for i in 0..length do
            for a in (i+1)..length do
                first_value = @list[i] 
                next_value = @list[a]
                if first_value > next_value
                    @list[i] = next_value
                    @list[a] = first_value
                end
            end
        end
        @list
    end

end

sort = BubbleSort.new
list = sort.sorting

p "Lista ordenada: #{list}"
