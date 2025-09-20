# encoding: UTF-8
# ============================================================
# Gestor de Tareas en Ruby
#   Almacena tareas en un archivo JSON y permite:
#     - Ver tareas
#     - Agregar tareas
#     - Marcar tareas como completadas
# ============================================================

require 'json'

# ------------------------------------------------------------
# Clase: Task
# Representa una tarea con ID, título y estado de completada.
# ------------------------------------------------------------
class Task
  attr_accessor :id, :titulo_tarea, :completada_tarea

  def initialize(id, titulo_tarea, completada_tarea = false)
    @id = id
    @titulo_tarea = titulo_tarea
    @completada_tarea = completada_tarea
  end

  def to_h
    { id: @id, titulo_tarea: @titulo_tarea, completada_tarea: @completada_tarea }
  end
end

# ------------------------------------------------------------
# Clase: TaskDecision
# Encapsula la lógica de gestión de tareas (CRUD básico).
# ------------------------------------------------------------
class TaskDecision
  FILE_PATH = 'tareas.json'

  def initialize
    @tareas = load_tareas
  end

  # Carga las tareas desde el archivo JSON
  def load_tareas
    if File.exist?(FILE_PATH)
      JSON.parse(File.read(FILE_PATH), symbolize_names: true).map do |data|
        Task.new(data[:id], data[:titulo_tarea], data[:completada_tarea])
      end
    else
      []
    end
  end

  # Guarda las tareas en el archivo JSON
  def save_tareas
    File.write(FILE_PATH, JSON.pretty_generate(@tareas.map(&:to_h)))
  rescue StandardError => e
    puts "Error al guardar tareas: #{e.message}"
  end

  # Lista todas las tareas con su estado
  def list_tareas
    puts "\n--- Lista de tareas ---"
    if @tareas.empty?
      puts "No hay tareas registradas."
    else
      @tareas.each do |task|
        status = task.completada_tarea ? "si" : "no"
        puts "#{task.id}. [#{status}] #{task.titulo_tarea}"
      end
    end
  end

  # Agrega una nueva tarea
  def add_task(titulo_tarea)
    id = @tareas.empty? ? 1 : @tareas.map(&:id).max + 1
    @tareas << Task.new(id, titulo_tarea)
    save_tareas
    puts "Tarea agregada: #{titulo_tarea}"
  end

  # Marca una tarea como completada
  def complete_task(id)
    task = @tareas.find { |t| t.id == id }
    if task
      task.completada_tarea = true
      save_tareas
      puts "Tarea completada: #{task.titulo_tarea}"
    else
      puts "No se encontró tarea con ID #{id}"
    end
  end
end

# ------------------------------------------------------------
# Menú principal
# ------------------------------------------------------------
desicion = TaskDecision.new

loop do
  puts "\n--- Gestor de Tareas ---"
  puts "1. Ver tareas"
  puts "2. Agregar tarea"
  puts "3. Marcar tarea como completada"
  puts "4. Salir"
  print "Elige una opción: "
  choice = gets.chomp

  case choice
  when "1"
    desicion.list_tareas
  when "2"
    print "Ingresa el título de la tarea: "
    titulo_tarea = gets.chomp
    desicion.add_task(titulo_tarea)
  when "3"
    print "ID de la tarea a completar: "
    id = gets.chomp.to_i
    desicion.complete_task(id)
  when "4"
    puts "Saliendo del gestor..."
    break
  else
    puts "Opción inválida, intenta de nuevo."
  end
end
