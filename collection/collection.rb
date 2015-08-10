## Collectionのテスト

class CollectionTest
  attr_accessor :x, :y
  def initialize
    @x = [1,2,3,4,5,6,7,8,9,10]
    @y = {red: 'a', bule: 'b'}
  end
end

### Array
collection = CollectionTest.new
# 2倍数のみ表示
p collection.x.select {|e| e % 2 == 0 }
# 2倍数以外を表示
p collection.x.reject { |e| e % 2 == 0 }
# インスタンス変数に代入後に値を更新
collection.x=([6,7,1,4,3,2,5,9])
p collection.x.sort!
# ブロックで全ての値を表示
p collection.x.each { |i|
    p i*10
 }
# 型整理
collection.x=([2, "1", 0])
p collection.x.sort! {|x, y| x.to_i <=> y.to_i }
# 削除
collection = CollectionTest.new
p collection.x.delete_if { |e| e % 2 == 0 }

### Hash
p collection.y[:red]
p collection.y.select {|k, v| k == :red && v == 'a'}
p collection.y.to_a
