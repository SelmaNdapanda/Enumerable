require './enumerable.rb'

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

puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}
puts list.any? {|e| e == 2}
puts list.any? {|e| e == 5}
puts list.filter {|e| e.even?}