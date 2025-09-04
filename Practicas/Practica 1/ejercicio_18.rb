def notacion_entera(red,green,blue)
    return red + green * 256 + blue * 256 * 256
end

def notacion_hexadecimal(red,green,blue)
    return "#%02X%02X%02X" % [red, green, blue]
end

puts notacion_entera(0, 128, 255)
puts notacion_hexadecimal(0, 128, 255)