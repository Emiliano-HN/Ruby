# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Diferentes formas de crear y recorrer arreglos (listas)
#   y trabajar con diccionarios (hashes).
#
# Buenas prácticas aplicadas:
#   - Convenciones de nombres: CamelCase para clases y snake_case para métodos.
#   - Uso de puts para salida legible.
#   - Documentación clara para cada método.
# ============================================================

# ------------------------------------------------------------
# Clase: EjemplosArreglos
# Responsabilidad:
#   Demostrar distintas formas de crear, recorrer y manipular
#   arreglos y hashes en Ruby.
# ------------------------------------------------------------
class EjemplosArreglos
  def initialize
    # Inicialización opcional
  end

  # Ejemplo 1: Creación de arreglo y acceso por índice
  def ejemplo_basico_arreglos
    arreglo = [1, 2, 3].push("Nuevo valor")
    puts "Elemento en índice 2: #{arreglo[2]}"
    puts "Último elemento: #{arreglo[-1]}"
  end

  # Ejemplo 2: Recorrer un arreglo con for
  def ejemplo_2_arreglos
    ejemplo = [1, 2, 3, 4, 5, 6]
    for i in ejemplo
      puts i
    end
  end

  # Ejemplo 3: Recorrer un arreglo con each
  def ejemplo_3_arreglos
    ejemplo2 = [9, 8, 7, 6]
    ejemplo2.each do |i|
      puts i
    end
  end

  # Ejemplo 4: Filtrar un arreglo con delete_if
  def ejemplo_4_arreglos
    ejemplo3 = [1.1, 2.2, 3.3, 4.4]
    otro = ejemplo3.delete_if { |numero| numero % 2 == 0 }
    for i in otro
      puts i
    end
  end

  # Ejemplo 5: Uso de diccionario (hash)
  def ejemplo_diccionario
    cursos = { 'ruby' => 15, 'html5' => 25, 'python' => 30 }
    indices = cursos.keys
    for i in indices
      puts "#{i} => #{cursos[i]}"
    end
  end
end

# ------------------------------------------------------------
# Ejecución principal
# ------------------------------------------------------------
objeto = EjemplosArreglos.new
objeto.ejemplo_basico_arreglos
objeto.ejemplo_2_arreglos
objeto.ejemplo_3_arreglos
objeto.ejemplo_4_arreglos
objeto.ejemplo_diccionario

gets # Pausa final para interacción con el usuario
