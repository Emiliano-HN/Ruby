# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Uso de ciclos while, begin-while, until y begin-until.
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: CamelCase para clases y snake_case para métodos.
#   - Uso de puts en lugar de print (mejor salida en consola).
#   - Documentación clara para cada método.
# ============================================================

# ------------------------------------------------------------
# Clase: EjemplosWhile
# Responsabilidad:
#   Demostrar diferentes variantes de ciclos en Ruby.
#
# Métodos:
#   - ejemplo_while_1: Ciclo while clásico.
#   - ejemplo_while_2: Ciclo begin-while (ejecuta al menos una vez).
#   - ejemplo_while_3: Ciclo until (se repite mientras la condición sea falsa).
#   - ejemplo_while_4: Ciclo begin-until (ejecuta al menos una vez).
# ------------------------------------------------------------
class EjemplosWhile
  def initialize
    # Inicialización opcional
  end

  # Ciclo while clásico: imprime números del 0 al 4
  def ejemplo_while_1
    i = 0
    while i < 5
      puts i
      i += 1
    end
  end

  # Ciclo begin-while: imprime desde 3 hasta 4
  def ejemplo_while_2
    j = 3
    begin
      puts j
      j += 1
    end while j < 5
  end

  # Ciclo until: imprime mientras la condición sea falsa (de 3 a 5)
  def ejemplo_while_3
    k = 3
    until k > 5
      puts k
      k += 1
    end
  end

  # Ciclo begin-until: se ejecuta al menos una vez
  def ejemplo_while_4
    l = 5
    begin
      puts l
      l += 1
    end until l < 5
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = EjemplosWhile.new
objeto.ejemplo_while_1
objeto.ejemplo_while_2
objeto.ejemplo_while_3
objeto.ejemplo_while_4

gets # Pausa final para interacción con el usuario
