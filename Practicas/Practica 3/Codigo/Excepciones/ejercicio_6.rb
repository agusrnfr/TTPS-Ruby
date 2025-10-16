def opcion_1
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = a.map do |x|
    x * b
  end
  puts c.inspect
rescue
  0
end

def opcion_2
  c = begin
      a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
      b = 3
      a.map do |x|
        x * b
      end
    rescue
    end
  puts c.inspect
end

def opcion_3
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = a.map { |x| x * b } rescue 0
  puts c.inspect
end

def opcion_4
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = a.map { |x| x * b rescue 0 }
  puts c.inspect
end

puts "Ejecutando opcion 1:"
opcion_1
puts "Ejecutando opcion 2:"
opcion_2
puts "Ejecutando opcion 3:"
opcion_3
puts "Ejecutando opcion 4:"
opcion_4
