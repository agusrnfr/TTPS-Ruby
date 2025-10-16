class NoEsUnaPalabra < StandardError; end
class EsUnStringVacio < StandardError; end

class Palabra
  VOCALES = %w[a e i o u]

  def initialize(palabra)
    str = palabra.strip # No hago to_s ya que asumo que siempre me pasan un string (no se pide en el enunciado un chequeo si tiene numeros o simbolos)

    if str.empty?
      raise EsUnStringVacio, "Es un string vacío"
    end
    if str.match?(/\s/)
      raise NoEsUnaPalabra, "<#{str}> no es una palabra"
    end

    @palabra = str
  end

  def vocales
    @palabra.downcase.chars.uniq.select { |c| VOCALES.include?(c) }
  end

  def consonantes
    @palabra.downcase.chars.uniq.select { |c| !VOCALES.include?(c) }
  end

  def longitud
    @palabra.length
  end

  def es_panvocalica?
    (VOCALES - self.vocales).empty?
  end

  def es_palindroma?
    self.longitud >= 3 && @palabra.downcase == @palabra.downcase.reverse
  end

  def gritando
    @palabra.upcase
  end

  def en_jaquer
    mapa = {
      "a" => "4",
      "e" => "3",
      "i" => "1",
      "o" => "0",
      "u" => "2",
    }

    @palabra.downcase.chars.map { |c| mapa[c] || c }.join
  end
end
