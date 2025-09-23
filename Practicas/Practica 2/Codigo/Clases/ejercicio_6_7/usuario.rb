class Usuario
    attr_reader :nombre, :clave, :email
    attr_accessor :rol

    def initialize(nombre = "", clave = "", email = "", rol = Lector.new)
        @nombre = nombre
        @clave = clave
        @email = email
        @rol = rol
    end

    def puede_ver?(documento)
        rol.puede_ver?(documento, self)
    end

    def puede_modificar?(documento)
        rol.puede_modificar?(documento, self)
    end

    def puede_borrar?(documento)
        rol.puede_borrar?(documento, self)
    end

    def to_s
    "#{email} (#{rol.class.name})"
    end

end