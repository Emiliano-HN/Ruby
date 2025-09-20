# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Demostración de dos formas de imprimir "Hola Mundo":
#   1. Desde el programa principal.
#   2. Mediante una clase y un método de instancia.
#
# Buenas prácticas incluidas:
#   - Convenciones de nombres (CamelCase para clases).
#   - Documentación estilo RDoc para clases y métodos.
#   - Separación clara entre lógica principal y objetos.
#   - Interacción mínima con el usuario mediante gets.
# ============================================================

# Forma 1: Hola Mundo desde el programa principal
puts "Hola Mundo en consola desde el inicio del programa"
gets # Pausa para interacción con el usuario

# ------------------------------------------------------------
# Clase: HolaMundo
# Responsabilidad:
#   Representar un objeto capaz de emitir un saludo en consola.
#
# Métodos:
#   - initialize: Constructor básico.
#   - saluda: Muestra un mensaje en consola.
# ------------------------------------------------------------
class HolaMundo
  # Constructor del objeto HolaMundo
  def initialize
    # Espacio reservado para futuras inicializaciones
  end

  # Imprime un saludo en consola.
  #
  # @return [void]
  def saluda
    puts "Hola Mundo desde un objeto de la clase HolaMundo"
  end
end

# ------------------------------------------------------------
# Ejecución principal:
#   - Se instancia la clase HolaMundo.
#   - Se invoca el método de saludo.
# ------------------------------------------------------------
objeto = HolaMundo.new
objeto.saluda
gets # Pausa final para evitar cierre inmediato del programa
