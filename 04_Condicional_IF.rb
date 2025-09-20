# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Uso de condicionales if / elsif / else con variables locales.
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres (CamelCase para clases, snake_case para métodos).
#   - Condiciones claras y legibles.
#   - Documentación estilo RDoc para clase y método.
# ============================================================

# ------------------------------------------------------------
# Clase: EjemploIf
# Responsabilidad:
#   Demostrar el uso de estructuras condicionales en Ruby.
#
# Métodos:
#   - funcion_ejemplo_if: Evalúa la edad y la confirmación,
#     imprime si es menor o mayor de edad.
# ------------------------------------------------------------
class EjemploIf
  def initialize
    # Inicialización opcional
  end

  # Evalúa condiciones de edad y confirmación.
  #
  # @return [void]
  def funcion_ejemplo_if
    edad = 19
    confirmacion = "si"

    # Condición compuesta con "and"
    if edad < 18 && confirmacion == "si"
      puts "Menor de edad"
    elsif edad >= 18 && confirmacion == "si"
      puts "Mayor de edad"
    else
      puts "Condición no válida"
    end
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = EjemploIf.new
objeto.funcion_ejemplo_if

gets # Pausa final para interacción con el usuario
