class CharacterCount
  def initialize(text)
    @ascii_decimal_code = []

    text.length.times do |i|
      @ascii_decimal_code << text[i].ord
    end
  end

  def lowercase
    count(97, 122)
  end

  def uppercase
    count(65, 90)
  end

  def special
    count = lowercase
    count += uppercase
    count += numeric
    @ascii_decimal_code.length - count
  end

  def numeric
    count(48, 57)
  end

  private

  def count(initial, final)
    count = 0
    (initial..final).each do |i|
      count += @ascii_decimal_code.count(i)
    end
    count
  end
end

text = '#GeeKs01fOr@gEEks07'
character_count = CharacterCount.new(text)

puts "lower case: #{character_count.lowercase}"
puts "upper case: #{character_count.uppercase}"
puts "special: #{character_count.special}"
puts "numeric: #{character_count.numeric}"
