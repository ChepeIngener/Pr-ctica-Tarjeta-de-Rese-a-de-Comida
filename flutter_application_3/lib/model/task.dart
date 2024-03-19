// Definición de la clase Task
class Task {
  // Atributos de la clase Task
  final String title; // Título de la tarea
  final String description; // Descripción de la tarea

  // Constructor de la clase Task
  const Task(this.title, this.description);
}

// Creación de una lista de tareas (Task)
final lista = List.generate(
    20, // Crear 20 tareas en la lista
    // Función de generación para crear las tareas
    (index) =>
        Task('Tarea Numero: $index', 'Descrip´cion de la tarea numero $index')
    // Cada tarea se crea con un título y una descripción concatenando el número de índice
    );
