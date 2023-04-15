
class BinarySearch

    :list

    def initialize(list)
        @list = list.is_a?(Array) ? list : []
    end

    def search(x)
        ascending_order

        first_index = 0
        last_index = @list.length-1
        average_index = average(first_index, last_index)

        for i in 0..average_index do
            if @list[average_index] == x
                return average_index
            elsif x < @list[average_index]
                last_index = average_index - 1
            elsif x > @list[average_index]
                first_index = average_index + 1
            end
            average_index = average(first_index, last_index)
        end

        return -1

    end

    private
    def ascending_order
        @list = @list.sort
    end

    def average(first, last)
        (first + last) / 2
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
