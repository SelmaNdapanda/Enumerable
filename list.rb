require './enumerable'

class MyList
  def initialize(list)
    @list = list
  end

  include MyEnumerable

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])

p(list.all? { |e| e > 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
p(list.filter(&:even?))
