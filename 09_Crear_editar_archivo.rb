# encoding: UTF-8
# ============================================================
# Ejemplo en Ruby:
#   Creación de un archivo .txt y escritura de contenido.
#   Se maneja la excepción en caso de error al abrir o escribir el archivo.
# ============================================================

begin
  # Abrir (o crear) el archivo 'prueba.txt' en modo escritura ('w')
  File.open('prueba.txt', 'w') do |file|
    file.puts "Este archivo tiene información asignada desde un software Ruby!"
  end

  puts "Archivo creado y escrito correctamente."

rescue StandardError => e
  # Mostrar el mensaje de error generado por el sistema
  puts "Ocurrió un error al crear o escribir el archivo: #{e.message}"
end
