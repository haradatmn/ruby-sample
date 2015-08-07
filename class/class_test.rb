
class ClassTest
  ##クラスインスタンス変数
  #attr_accessor :author, :title
  @@id = 0
  def initialize(author:'a',title:'t')
    @@id = @@id + 1
    @author = author
    @title = title
  end
  def id
    @@id
    end
  def id=(val)
    @@id = val
  end
  #def to_s
  #  "id: #{@@id}, author: #{@author}, title: #{@title}"
  #end
end

# book
obj = ClassTest.new(author:'author1', title:'title1')
#p #{book}"
p obj.author
p obj.id