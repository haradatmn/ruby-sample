# 変数スコープ

## クラス変数 -> クラス共通で保持する変数(javaのstatic)
## クラスインスタンス変数 ->
## インスタンス変数 -> インスタンスごとに保持される変数
## ローカル変数 -> クラス内のみで保持される変数（メソッド内のみ）

class VariableTest
  #クラス変数
  @@class_count = 0
  #クラスインスタンス変数
  @class_instance_count =0
  #ローカル変数
  local_count = 0

  def initialize
    #インスタンス変数
    @instance_count = 0
  end

  def increment
    @@class_count = @@class_count + 1
    @instance_count = @instance_count + 1
  end

  def to_s
    "class_count: #{@@class_count}  instance_count: #{@instance_count}"
  end
end


# Class1
class1 = VariableTest.new
(1..2).each { |x| class1.increment }
puts("class1: #{class1}")

# Class2
class2 = VariableTest.new
(1..2).each { |x| class2.increment }
puts("class2: #{class2}")

# Class3
class3 = VariableTest.new
(1..2).each { |x| class3.increment }
puts("class3: #{class3}")