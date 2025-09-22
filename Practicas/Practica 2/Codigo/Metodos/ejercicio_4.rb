def longitud(*numeros)
  numeros.each { |n| puts  "\"#{n}\" --> #{n.to_s.length}" }
end


longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)