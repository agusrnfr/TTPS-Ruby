def es_pentavolica(cadena)
    vocales = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    return vocales.map { |vocal| cadena.include?(vocal) }.count(true) >= 5
end

def es_pentavolica2(cadena)
    vocales = ['a', 'e', 'i', 'o', 'u']
    cadena = cadena.downcase
    return vocales.all? { |vocal| cadena.include?(vocal) }
end

puts es_pentavolica("Aurelio") # true
puts es_pentavolica("Educacion") # true
puts es_pentavolica("Hola mundo") # false
puts es_pentavolica("xyz") # false
puts es_pentavolica("Murcielago") # true

puts "---"

puts es_pentavolica2("Aurelio") # true
puts es_pentavolica2("Educacion") # true
puts es_pentavolica2("Hola mundo") # false
puts es_pentavolica2("xyz") # false
puts es_pentavolica2("Murcielago") # true