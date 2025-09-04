def string_reverso(string)
    return string.reverse
end

def string_sin_espacios(string)
    return string.delete(" ")
end

def string_a_arreglo_ascii(string)
    return string.bytes
end

def string_reemplaza_vocal(string)
    return string.tr("aeiouAEIOU", "4310643106")
end


puts string_reverso("Hola mundo")
puts string_sin_espacios("   Hola  mundo   ")
puts string_a_arreglo_ascii("Hola mundo")
puts string_reemplaza_vocal("Hola mundo")