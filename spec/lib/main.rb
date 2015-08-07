require './spec/lib/fizzbuzz'

obj = Fizzbuzz.new

(1..50).each { |num|
    p obj.call(num)
  }
