require_relative 'multilinguist'

class MathGenius < Multilinguist
    def report_total(numbers_array)
      sum_of_numbers = 0
      numbers_array.each do |numbers|
        sum_of_numbers += numbers
      end
      return say_in_local_language("The total is #{sum_of_numbers}")
    end
end

me = MathGenius.new
puts "---"*20
puts me.report_total([23,45,676,34,5778,4,23,5465])
puts "---"*20
me.travel_to("Canada")
puts me.report_total([6,3,6,68,455,4,467,57,4,534])
puts "---"*20
me.travel_to("Mexico")
puts "---"*20
puts me.report_total([324,245,6,343647,686545]) # È Il totale 1030767
