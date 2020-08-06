require "byebug"


#select is an array class method that returns a new array
#with all elements for which the given block returns a true value
def select_even_nums(arr)
    #debugger
    arr.select { |num| num.even? }
end