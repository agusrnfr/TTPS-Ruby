def multiplos_de_array (array, n)
    return (1..n).select { |x| array.all? { |y| x % y == 0 } }.sum
end

puts multiplos_de_array([3, 5], 100)
puts multiplos_de_array([3,5,17,28,65], 100_000)