class LinearSearch
    
    :list
    
    def initialize
        @list = []
    end

    def add_value_to_list(value)
        @list << value
    end

    def search_value(value)
        result = @list.index(value)
        if(result == nil) 
            return -1
        end
        result
    end
end

linear_search = LinearSearch.new
linear_search.add_value_to_list(2)
linear_search.add_value_to_list(10)
linear_search.add_value_to_list(9)
linear_search.add_value_to_list(5)
linear_search.add_value_to_list(27)
linear_search.add_value_to_list(48)

index_value = linear_search.search_value(10)

if index_value > -1
    puts "Valor encontrado no índice: #{index_value}"    
else
    puts "Valor não encontrado"    
end


