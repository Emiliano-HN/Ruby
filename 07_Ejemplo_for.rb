# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Uso de ciclo for para recorrer un rango numérico.
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: CamelCase para clases y snake_case para métodos.
#   - Uso de puts en lugar de print (cada número en su propia línea).
#   - Documentación clara y concisa.
# ============================================================

# ------------------------------------------------------------
# Clase: EjemploFor
# Responsabilidad:
#   Demostrar el uso del ciclo for en Ruby con un rango numérico.
#
# Métodos:
#   - ejemplo_for: Recorre números del 1 al 10 y los imprime.
# ------------------------------------------------------------
class EjemploFor
  def initialize
    # Inicialización opcional
  end

  # Ciclo for: imprime números del 1 al 10
  #
  # @return [void]
  def ejemplo_for
    for i in 1..10
      puts i
    end
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = EjemploFor.new
objeto.ejemplo_for

gets # Pausa final para interacción con el usuario
