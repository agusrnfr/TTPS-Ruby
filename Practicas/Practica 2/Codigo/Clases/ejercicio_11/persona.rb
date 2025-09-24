class Persona < GenericFactory
  attr_reader :nombre, :edad

  def initialize(nombre:, edad:)
    @nombre = nombre
    @edad = edad
  end
end
