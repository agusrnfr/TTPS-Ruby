def procesar_hash(hash, funcion)
  nuevo_hash = {}
  hash.each do |clave, valor|
    nuevo_valor = funcion.call(clave)
    nuevo_hash[valor] = nuevo_valor
  end
  nuevo_hash
end


hash = { 'clave' => 1, :otra_clave => 'valor' }
procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }