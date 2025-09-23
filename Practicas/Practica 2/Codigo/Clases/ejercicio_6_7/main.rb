require_relative 'documento'
require_relative 'usuario'
require_relative 'rol'
require_relative 'lector'
require_relative 'redactor'
require_relative 'director'
require_relative 'administrador'

lector = Usuario.new("Lucía", "clave1", "lucia@example.com", Lector.new)
redactor = Usuario.new("Martín", "clave2", "martin@example.com", Redactor.new)
director = Usuario.new("Sofía", "clave3", "sofia@example.com", Director.new)
admin = Usuario.new("Carlos", "clave4", "carlos@example.com", Administrador.new)

doc1 = Documento.new(redactor, true, "Documento público escrito por Martín")

doc2 = Documento.new(director, false, "Documento privado de Sofía")

puts "--- Pruebas con Documento Público ---"
puts "¿Lucía (lector) puede ver? #{doc1.puede_ser_visto_por?(lector)}"
puts "¿Lucía (lector) puede modificar? #{doc1.puede_ser_modificado_por?(lector)}"
puts "¿Martín (redactor) puede modificar el suyo? #{doc1.puede_ser_modificado_por?(redactor)}"
puts "¿Sofía (directora) puede modificar? #{doc1.puede_ser_modificado_por?(director)}"
puts "¿Carlos (admin) puede borrar? #{doc1.puede_ser_borrado_por?(admin)}"

puts "\n--- Pruebas con Documento Privado ---"
puts "¿Lucía (lector) puede ver? #{doc2.puede_ser_visto_por?(lector)}"
puts "¿Martín (redactor) puede modificar? #{doc2.puede_ser_modificado_por?(redactor)}"
puts "¿Sofía (directora) puede modificar? #{doc2.puede_ser_modificado_por?(director)}"
puts "¿Carlos (admin) puede borrar? #{doc2.puede_ser_borrado_por?(admin)}"

puts "\n--- Documento Borrado ---"
doc1.borrar
puts "¿Director Sofía puede ver doc1 borrado? #{doc1.puede_ser_visto_por?(director)}"
puts "¿Admin Carlos puede ver doc1 borrado? #{doc1.puede_ser_visto_por?(admin)}"
