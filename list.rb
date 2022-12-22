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

