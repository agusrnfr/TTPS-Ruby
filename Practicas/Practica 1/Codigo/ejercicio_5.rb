def remplazar(string)
    string.gsub!('{', 'do\n')  # Modifica el string original
    string.gsub!('}', '\nend') # Si no hace ningun cambio, devuelve nil
end

def remplazar2(string)
    string.gsub('{', 'do\n') # No modifica el string original
    string.gsub('}', '\nend') # Crea un nuevo string
end

puts remplazar("3.times { |i| puts i }")
puts remplazar2("3.times { |i| puts i }")