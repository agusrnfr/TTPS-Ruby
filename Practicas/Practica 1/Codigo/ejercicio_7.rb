def contar (string1, string2)
    return string1.scan(/#{string2}/i).count
end 

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")