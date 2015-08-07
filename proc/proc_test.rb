## クロージャー（メソッド+ブロック）

### Procクラスを使用したブロックを変数にする
### Proc::callからブロックを呼び出す

#require_relative 'employee'

class Employee
  attr_accessor :salary
end

def paid_more(amount)
  -> (employee) { employee.salary > amount }
end

high_paid = paid_more(150)
john = Employee.new
john.salary = 200
# true
p high_paid.call(john)

### クロージャーの表現方法として以下の３つは同じ
procedure1 = Proc.new{|e| p e}
procedure2 = lambda {|e| p e }
procedure3 = -> (e){p e}
procedure1.call("pro1")
procedure2.call("pro2")
procedure3.call("pro3")


## ブロック付きメソッド
### Procクラスを使用して、メソッドにブロックとして渡して実行できる

def threetime
  if block_given?
    yield "1!"
    yield "2!"
    yield "3!"
  end
end

proc = Proc.new{|n| p n}
threetime(&proc)