class CountingSort

    :ranger
    :data
    :count_array

    def initialize(data)
        @data = data
        @ranger = 9
        @count_array = Array.new(@ranger + 1) { 0 }
    end
    
    def sort
        output = []
        @data.length.times do |i|
            @count_array[@data[i]]+= 1
        end

        for i in 1..(@count_array.length-1) do
            @count_array[i]+= @count_array[i-1]
        end

        for i in 0..(@data.length-1) do
            output[@count_array[@data[i]]-1] = @data[i]
            @count_array[@data[i]]-= 1
        end

        output

    end
end

unsorted_list = [1, 4, 1, 2, 7, 5, 2, 0]

counting_sort = CountingSort.new(unsorted_list)
sorted_list = counting_sort.sort

p "Input: #{unsorted_list}"
p "Output: #{sorted_list}"

