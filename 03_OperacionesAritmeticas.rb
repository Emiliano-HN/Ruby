# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Operaciones aritméticas básicas (suma, resta, multiplicación,
#   división y exponenciación) con salida en consola.
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: snake_case para métodos.
#   - Documentación estilo RDoc para clase y métodos.
#   - Uso de interpolación de cadenas en lugar de concatenación.
# ============================================================

# ------------------------------------------------------------
# Clase: OperacionesAritmeticas
# Responsabilidad:
#   Realizar operaciones aritméticas básicas entre dos números.
#
# Métodos:
#   - initialize: Constructor vacío (puede extenderse).
#   - aritmetica: Calcula e imprime las operaciones básicas.
# ------------------------------------------------------------
class OperacionesAritmeticas
  # Constructor (puede recibir parámetros en versiones extendidas)
  def initialize
    # Inicialización opcional
  end

  # Realiza operaciones aritméticas básicas y las imprime en consola.
  #
  # @return [void]
  def aritmetica
    x = 3
    y = 7

    suma = x + y
    resta = x - y
    multiplicacion = x * y
    division = x.to_f / y # Convertido a flotante para mayor precisión
    exponente = x**y

    puts "La suma entre #{x} y #{y} es: #{suma}"
    puts "La resta entre #{x} y #{y} es: #{resta}"
    puts "La multiplicación entre #{x} y #{y} es: #{multiplicacion}"
    puts "La división entre #{x} y #{y} es: #{division}"
    puts "El exponente de #{x} elevado a #{y} es: #{exponente}"
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = OperacionesAritmeticas.new
objeto.aritmetica

gets # Pausa final para interacción con el usuario
