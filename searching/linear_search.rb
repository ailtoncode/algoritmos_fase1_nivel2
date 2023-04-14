class LinearSearch
    
    :list
    
    def initialize(list)
        @list = list.is_a?(Array) ? list : []
    end

    def find(key)
        length = @list.length
        for i in 0..length do
            if @list[i] == key
                return i
            end
        end
        return -1
    end
end

list = [10, 50, 30, 70, 80, 20, 90, 40]
linear_search = LinearSearch.new(list)

index_value = linear_search.find(20)

if index_value > -1
    puts "Valor encontrado no índice: #{index_value}"    
else
    puts "Valor não encontrado"    
end
