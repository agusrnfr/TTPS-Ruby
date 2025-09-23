class Director < Rol

    def puede_ver?(doc, usuario)
        !doc.borrado 
    end

    def puede_modificar?(doc, usuario)
        !doc.borrado
    end

end