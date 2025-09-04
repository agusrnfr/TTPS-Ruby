def longitud(arreglo)
  return arreglo.map { |x| x.length }
end

puts longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2025']).inspect