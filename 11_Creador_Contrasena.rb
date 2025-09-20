# encoding: UTF-8
# ============================================================
# Generador de contraseñas aleatorias en Ruby
# ============================================================

require 'securerandom'

# Genera una contraseña aleatoria con letras, números y símbolos
#
# @param longitud [Integer] La longitud deseada de la contraseña (por defecto 12)
# @return [String] Contraseña generada aleatoriamente
def crear_contrasena(longitud = 12)
  caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+'
  contraseña = Array.new(longitud) { caracteres[SecureRandom.random_number(caracteres.length)] }.join
  contraseña
end

# ------------------------------------------------------------
# Ejemplo de uso
# ------------------------------------------------------------
puts "La contraseña generada es: #{crear_contrasena}"
puts "Otra contraseña personalizada de 16 caracteres: #{crear_contrasena(16)}"
