# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Uso de variables (locales, de instancia y globales)
#   y demostración de conversiones entre tipos de datos.
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: snake_case para métodos.
#   - Documentación estilo RDoc para clases y métodos.
#   - Demostración ordenada de variables en Ruby.
# ============================================================

# Variable global (puede ser modificada en cualquier parte del programa)
$ejemplo_texto = "Variable global inicial"

# ------------------------------------------------------------
# Clase: PublicacionNota
# Responsabilidad:
#   Demostrar el uso de distintos tipos de variables en Ruby.
#
# Métodos:
#   - calcula_nota: Uso de variables locales y operaciones aritméticas.
#   - ejemplos_variables: Conversión entre texto y números.
#   - ejemplos_texto: Ejemplo de variables locales, de instancia y globales.
# ------------------------------------------------------------
class PublicacionNota
  # Constructor: inicializa variables de instancia y modifica la global
  def initialize
    @ejemplo_texto = "Soy una variable de instancia"
    $ejemplo_texto = "La variable global fue modificada"
  end

  # Demuestra cómo se crean variables locales
  # y cómo interactúan en una operación aritmética.
  #
  # @return [void]
  def calcula_nota
    nombre = "Hola, ¿cómo te llamas?"
    numero1 = 3
    numero2 = 9.3
    puts nombre
    puts "Suma de números: #{numero1 + numero2}"
  end

  # Demuestra conversiones entre tipos de variables:
  # texto a número, número a texto.
  #
  # @return [void]
  def ejemplos_variables
    texto_con_num = "1.7"
    texto_con_num = texto_con_num.to_f # Conversión a número flotante

    numero3 = 9
    numero3 = numero3.to_s # Conversión a cadena

    puts "Texto convertido a número: #{texto_con_num}"
    puts "Número convertido a texto: #{numero3}"
  end

  # Demuestra variables:
  # - Local (válida solo dentro del método).
  # - De instancia (propia del objeto).
  # - Global (disponible en todo el programa).
  #
  # @return [void]
  def ejemplos_texto
    ejemplo_texto = "Soy una variable local"
    puts "Local: #{ejemplo_texto}"
    puts "De instancia: #{@ejemplo_texto}"
    puts "Global: #{$ejemplo_texto}"
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = PublicacionNota.new
objeto.calcula_nota
objeto.ejemplos_variables
objeto.ejemplos_texto

gets # Pausa final para interacción con el usuario
