cantidad = 0
while cantidad < 15
  puts "Cuál es la cantidad de números que ingresará? Debe ser al menos 15"
  begin
    cantidad = Integer(gets.chomp)
    if cantidad < 15
      puts "La cantidad debe ser al menos 15"
      redo
    end
  rescue ArgumentError
    puts "Por favor, ingrese un número entero."
    retry
  end
end

numeros = 1.upto(cantidad).map do
  puts "Ingrese un número"
  begin
    numero = Integer(gets.chomp)
  rescue ArgumentError
    puts "Por favor, ingrese un número entero."
    retry
  end
end

resultado = numeros.map do |x|
  begin
    x / (x - 1)
  rescue ZeroDivisionError
    puts "No se puede dividir #{x} por (#{x}-1)=0. Se omite."
    nil
  end
end.compact
puts "El resultado es: %s" % resultado.join(", ")
