
class FindThree

  def find(list)
    sort = list.sort.reverse
    puts "#{sort[0]}, #{sort[1]}, #{sort[2]}"
  end
end

find_three = FindThree.new

find_three.find([10, 4, 3, 50, 23, 90])