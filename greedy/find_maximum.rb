class FindMaximum
    def find(stacks)
        all = sum_all(stacks)
        total = !all.empty? ? all.inject(:+) : 0
        total.times do
            sum = sum_all(stacks)
            previous = {"index" => 0, "max_sum" => sum[0]}
            equal = true
            for i in 1..(sum.length-1) do
                if sum[i] > previous["max_sum"]
                    previous["index"] = i
                    previous["max_sum"] = sum[i]
                end
                equal = sum[i] != sum[i-1] ? false : equal
            end
            if !equal
                stacks[previous["index"]].shift
                stacks[previous["index"]] << 0 if stacks[previous["index"]].empty?
            else
                return previous["max_sum"]
            end
        end
    end

    private
    def sum_all(stacks)
        sum = []
        for i in 0..(stacks.length-1) do
            sum[i] = stacks[i].inject(:+).nil? ? 0 : stacks[i].inject(:+)
        end
        sum
    end
end


=begin
stacks = [
    [3, 2, 1, 1 , 1],
    [4, 3, 2],
    [2, 5, 4, 1]
]

stacks = [
    [3, 10],
    [4, 5],
    [2, 1]
]
=end
stacks = [
    [3, 2, 1, 1 , 1],
    [4, 3, 2],
    [2, 5, 4, 1]
]

find_maximum = FindMaximum.new
maximum_sum = find_maximum.find(stacks)

puts "Soma máxima: #{maximum_sum}"
