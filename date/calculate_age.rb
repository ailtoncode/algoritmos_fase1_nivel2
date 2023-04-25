
require 'date'

class CalculateAge
  def age(birth_date, present_date)
    birth_date = date(birth_date)
    present_date = date(present_date)

    birth_day = birth_date.day
    birth_month = birth_date.month
    birth_year = birth_date.year
    present_day = present_date.day
    present_month = present_date.month
    present_year = present_date.year
    
    month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    if present_year <= birth_year && present_month <= birth_month
      if present_month == birth_month && present_day < birth_day
        puts 'A data atual não pode ser anterior à data de nascimento'
        return
      elsif present_month < birth_month
        puts 'A data atual não pode ser anterior à data de nascimento'
        return
      end
    end

    if birth_day > present_day
      present_day = present_day + month[birth_month - 1]
      present_month = present_month - 1
    end

    if birth_month > present_month
      present_year -= 1
      present_month += 12
    end

    years = present_year - birth_year
    months = present_month - birth_month
    days = present_day - birth_day
    
    years = 0 if years < 0
    puts "Years: #{years}, Months: #{months}, Days: #{days}"
  end

  def date (str)
    Date.strptime(str, "%d/%m/%Y")
  end

end

birth_date = '2/01/2017'
present_date = '22/08/2017'

calculate_age = CalculateAge.new
calculate_age.age(birth_date, present_date)
