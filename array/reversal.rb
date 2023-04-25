class Reversal
  def run(list, k)
    reverse = list.reverse
    list.each_with_index do |value, index|
      if index < k
        list.unshift(reverse[index])
        list.pop()
      else
        break
      end
    end
    p list
  end
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3

reversal = Reversal.new
reversal.run(list, k)
