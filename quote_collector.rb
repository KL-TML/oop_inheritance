require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  def initialize
    @quote_collection = []
  end

  def quote_said=(quote)
    @quote_collection << quote
  end

  def unleash_quote
    return say_in_local_language(@quote_collection.sample) #sample allows for a random quote to be selected from the array
  end
end


me = QuoteCollector.new
me.quote_said = "I love lamp - Brick"
me.quote_said = "I tend to think of myself as a one man wolf pacl - Alan"
me.quote_said = "Well the jerk store called, and they're running out of you! - Costanza"
puts me.unleash_quote
me.travel_to("Mexico")
puts "---"*20
puts me.unleash_quote
puts "---"*20
me.travel_to("Italy")
puts "---"*20
puts me.unleash_quote
