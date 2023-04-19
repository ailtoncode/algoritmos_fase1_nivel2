class MinimumSum

    def sum(input)
        input.min * (input.length-1)
    end

end

minimum_sum = MinimumSum.new

#input = [2, 4, 1, 3]
#input = [4, 3]
input = [3, 6, 2, 8, 7, 5]

output = minimum_sum.sum(input)
puts output
