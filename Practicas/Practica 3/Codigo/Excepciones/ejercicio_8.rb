require_relative "invalid_integer_input"

def pedir_entero(mensaje)
  puts mensaje
  entrada = gets.chomp
  Integer(entrada)
rescue ArgumentError
  raise InvalidIntegerInput, "La entrada '#{entrada}' no es un número entero válido."
end

cantidad = 0
while cantidad < 15
  begin
    cantidad = pedir_entero("Cuál es la cantidad de números que ingresará? Debe ser al menos 15")
    if cantidad < 15
      puts "La cantidad debe ser al menos 15"
      redo
    end
  rescue InvalidIntegerInput => e
    puts e.message
    retry
  end
end

numeros = 1.upto(cantidad).map do |i|
  begin
    pedir_entero("Ingrese el número ##{i}:")
  rescue InvalidIntegerInput => e
    puts e.message
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
