class MinimumProduct
    def min(product)
        negative_numbers = []
        product.each {|value|
            if value < 0
                negative_numbers << value
            end
        }

        if negative_numbers.length > 0
            if !is_odd(negative_numbers.length) && !product.include?(0)
                max = negative_numbers.max
                product.delete(max)
                return product.inject(:*)
            end
            
            if is_odd(negative_numbers.length) && !product.include?(0)
                return product.inject(:*)
            end
        end
        
        if negative_numbers.length == 0 && product.min >= 0
            if product.include?(0)
                return 0
            else
                return product.min
            end
        end

        product.delete(0)
        return product.inject(:*)

    end

    private 
    def is_odd(number)
        if number % 2 != 0
            return true
        end
        false
    end
end

minimum_product = MinimumProduct.new

#input = [-1, -1, -2, 4, 3]
#input = [-1, 0]
#input = [0, 0, 0]
#input = [-4, -6, -2, 3, 6, 0]
#input = [11]
#input = [-11]
#input = [0]
#input = [2,7,9]
#input = [-2,-7,-9]
#input = [4, -6, -2, 3, 6]
#input = [-8,-3, 5, 9]
#input = [-6, 4, -5, 8, -10, 0, 8]
#input = [-6, 4, -5, 8, -10, -8]
input = [-1, -1, -2, 4, 3]

result = minimum_product.min(input)

puts "Resultado: #{result}"
