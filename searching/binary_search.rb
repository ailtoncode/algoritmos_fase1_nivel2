
class BinarySearch

    :list

    def initialize(list)
        if list.is_a?(Array)
            @list = list
        else
            @list = []
        end
    end

    def search(x)
        ascending_order
        count = 0
        index = -1
        while count < @list.length
            if @list[count] == x
                index = count
                break
            end
            count+= 1
        end
        return index
    end

    private
    def ascending_order
        @list = @list.sort
    end

end

list = [549, 5, 7, 11, 18, 993, 29, 441, 37, 40, 60, 215, 317]
binary_search = BinarySearch.new(list)

x = 18
index = binary_search.search(x)

if index > -1
    puts "O elemento x está presente no índice #{index}"
else
    puts "O elemento x não está presente em list[]."
end
