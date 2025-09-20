# encoding: UTF-8
# ============================================================
# Calculadora en Ruby
#   Permite realizar operaciones básicas: suma, resta,
#   multiplicación y división, con validación de entradas.
# ============================================================

# Muestra el menú de opciones al usuario
def mostrar_menu
  puts "=============================="
  puts "       Calculadora en Ruby     "
  puts "=============================="
  puts "Seleccione una operación:"
  puts "1. Sumar"
  puts "2. Restar"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Salir"
  puts "=============================="
end

# Solicita al usuario ingresar dos números
# @return [Array<Float>] num1 y num2
def pedir_numeros
  print "Ingrese el primer número: "
  num1 = gets.chomp
  until valid_number?(num1)
    print "Número inválido. Ingrese nuevamente el primer número: "
    num1 = gets.chomp
  end

  print "Ingrese el segundo número: "
  num2 = gets.chomp
  until valid_number?(num2)
    print "Número inválido. Ingrese nuevamente el segundo número: "
    num2 = gets.chomp
  end

  [num1.to_f, num2.to_f]
end

# Valida que la entrada sea un número válido
# @param str [String]
# @return [Boolean]
def valid_number?(str)
  Float(str) rescue false
end

# Ciclo principal de la calculadora
loop do
  mostrar_menu
  print "Seleccione una opción: "
  opcion = gets.chomp.to_i

  case opcion
  when 1
    num1, num2 = pedir_numeros
    puts "Resultado: #{num1} + #{num2} = #{num1 + num2}"
  when 2
    num1, num2 = pedir_numeros
    puts "Resultado: #{num1} - #{num2} = #{num1 - num2}"
  when 3
    num1, num2 = pedir_numeros
    puts "Resultado: #{num1} * #{num2} = #{num1 * num2}"
  when 4
    num1, num2 = pedir_numeros
    if num2.zero?
      puts "Error: No se puede dividir entre cero."
    else
      puts "Resultado: #{num1} / #{num2} = #{num1 / num2}"
    end
  when 5
    puts "Saliendo de la calculadora..."
    break
  else
    puts "Opción no válida. Intente nuevamente."
  end

  puts "\n" # Salto de línea para legibilidad
end
