def lista_mejorada(hash, pegamento = ": ")
    return hash.map.with_index(1) { |(clave, valor), index| "#{index}. #{clave}#{pegamento}#{valor}" }.join("\n")
end

puts lista_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ").inspect
puts lista_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }).inspect