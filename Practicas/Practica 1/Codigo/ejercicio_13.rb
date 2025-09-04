def listar (hash)
    return hash.map.with_index(1) { |(clave, valor), index| "#{index}. #{clave}: #{valor}" }.join("\n")
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 }).inspect