
require 'date'

class FindFuture
  def compare(first_date, second_date)
    first = Date.strptime(first_date, '%d/%m/%Y')
    second = Date.strptime(second_date, '%d/%m/%Y')
    return first.year - second.year if first.year != second.year
    return first.month - second.month if first.month != second.month
    return first.day - second.day if first.day != second.day
    0
  end

  def closest_date(list_of_dates, query)
    list_of_dates = list_of_dates.sort { |value1, value2| compare(value1, value2) }

    query.each do |query_date|
      index = -1
      initial_value = 0
      final_value = list_of_dates.length-1
      aux = Float::INFINITY
      
      list_of_dates.each do
        middle = ((initial_value + final_value) / 2).floor
        value = compare(list_of_dates[middle], query_date)
        if value > 0 && value < aux
          index = middle
          aux = value
          final_value = middle - 1
        else
          initial_value = middle + 1
        end
      end
      puts index > -1 ? list_of_dates[index] : -1
    end
  end
end

list_of_dates = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
#query = ["23/3/4345", "12/3/2"]
query = ["23/3/4345", "4/4/34234234", "12/3/2"]

find_future = FindFuture.new
result = find_future.closest_date(list_of_dates, query)
