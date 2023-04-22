require 'date'

class FindFuture
  def closest_date(list_of_dates, query)
    output = []
    query.each do |query_value|
      days = Float::INFINITY
      aux_date = nil
      list_of_dates.each do |date|
        date_query = Date.strptime(query_value, '%d/%m/%Y')
        date_list = Date.strptime(date, '%d/%m/%Y')
        diff = (date_list-date_query).to_i
        if diff < days && diff > 0
          days = diff
          aux_date = date
        end
      end
      output << aux_date if !aux_date.nil?
    end
    !output.empty? ? output : -1
  end
end

list_of_dates = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
query = ["23/3/4345", "12/3/2"]

find_future = FindFuture.new
result = find_future.closest_date(list_of_dates, query)
p result