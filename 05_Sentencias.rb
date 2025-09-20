# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Uso de condicionales (if, unless, case y anidación).
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: CamelCase para clases y snake_case para métodos.
#   - Uso de puts en lugar de print (mejor salida en consola).
#   - Documentación clara para cada método.
# ============================================================

# ------------------------------------------------------------
# Clase: EjemploSentencias
# Responsabilidad:
#   Demostrar distintas estructuras condicionales en Ruby.
#
# Métodos:
#   - sentencias_unless: Uso de "unless".
#   - sentencia_case_1: Uso de case con rangos numéricos.
#   - sentencia_case_2: Uso de case con cadenas y valores múltiples.
#   - if_anidado: Uso de condicionales if/elsif/else con anidación.
# ------------------------------------------------------------
class EjemploSentencias
  def initialize
    # Inicialización opcional
  end

  # Ejemplo de uso de "unless"
  #
  # @return [void]
  def sentencias_unless
    bloqueado = "Juan"
    unless bloqueado != "Juan"
      puts "No puede entrar a la fiesta"
    end
  end

  # Ejemplo de uso de case con rangos de edades
  #
  # @return [void]
  def sentencia_case_1
    edad = 45
    case edad
    when 0..11 then puts "Es niño"
    when 12..17 then puts "Es adolescente"
    when 18..29 then puts "Es joven"
    when 30..59 then puts "Es adulto"
    when 60..150 then puts "Es adulto mayor"
    else puts "Error en la variable"
    end
  end

  # Ejemplo de case con cadenas y valores múltiples
  #
  # @return [void]
  def sentencia_case_2
    sustantivo = "google"
    respuesta = case sustantivo
                when 19..150, "dxvtuts" then "Comunidades de tutoriales"
                when "facebook", "google" then "Empresas líderes de internet"
                when "chrome", "firefox" then "Navegadores de verdad"
                else "Sustantivo desconocido"
                end
    puts respuesta
  end

  # Ejemplo de if anidado para validar si un número es positivo,
  # negativo (con anidación adicional) o cero.
  #
  # @return [void]
  def if_anidado
    i = 3

    if i > 0
      puts "La variable es positiva"
    elsif i < 0
      puts "La variable es negativa"
      if i < -10
        puts "La variable es menor a -10"
      end
    else
      puts "La variable es 0"
    end
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = EjemploSentencias.new
objeto.sentencias_unless
objeto.sentencia_case_1
objeto.sentencia_case_2
objeto.if_anidado

gets # Pausa final para interacción con el usuario
