class Lector < Rol

    def puede_ver?(doc, usuario)
        !doc.borrado && doc.publico
    end

end