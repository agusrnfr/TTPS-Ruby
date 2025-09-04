def multiplos_de_3_y_5 (n)
    (1..n).select { |x| x % 3 == 0 && x % 5 == 0 }.sum
end

def multiplos_de_3_y_5_opcion_2 (n)
    (1..n).map { |x| (x % 3 == 0 && x % 5 == 0) ? x : 0 }.sum
end

def multiplos_de_3_y_5_opcion_3 (n)
    (1..n).select { |x| x % 15 == 0}.sum
end

puts multiplos_de_3_y_5(100)
puts multiplos_de_3_y_5_opcion_2(100)
puts multiplos_de_3_y_5_opcion_3(100)