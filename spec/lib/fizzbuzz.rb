#
# FizzBuzz問題
#
class Fizzbuzz
  @@DIV3_STR = "Fizz"
  @@DIV5_STR = "Buzz"

  def call(num)
    if is_div3(num) && is_div5(num) then
      @@DIV3_STR + @@DIV5_STR
    elsif is_div3(num) then
      @@DIV3_STR
    elsif is_div5(num) then
      @@DIV5_STR
    else
      num.to_s
    end
  end

  def is_div3(n)
    ( (n % 3) == 0 )
  end

  def is_div5(n)
    ( (n % 5) == 0 )
  end

end