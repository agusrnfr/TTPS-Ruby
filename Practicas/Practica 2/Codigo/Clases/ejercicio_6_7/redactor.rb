class Redactor < Lector

    def puede_modificar?(doc, usuario)
        !doc.borrado && doc.creador == usuario
    end

end