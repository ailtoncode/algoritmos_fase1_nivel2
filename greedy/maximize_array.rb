class MaximizeArray
    def maximize(list, k)
        while k > 0
            list = list.sort.map {|value|
                value < 0 ? value.abs : value
            }
            k-= 1
        end
        list.inject(0, :+)
    end
end

maximize_array = MaximizeArray.new

#input = [9,8,8,5]
input = [-2, 0, 5, -1, 2]
k = 3
puts "result: " + maximize_array.maximize(input, k).to_s


