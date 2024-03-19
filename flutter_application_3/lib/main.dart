import 'package:flutter/material.dart';
import 'package:flutter_application_3/Model/Task.dart';
import 'package:flutter_application_3/View/Details_view.dart';

// Creación de la lista de tareas utilizando List.generate
final tasks = List.generate(
    20, // Crear 20 tareas en la lista
    // Función de generación para crear las tareas
    (index) =>
        Task('Tarea Numero: $index', 'Descrip´cion de la tarea numero $index')
    // Cada tarea se crea con un título y una descripción concatenando el número de índice
    );

// Método principal de la aplicación Flutter
void main() {
  runApp(const MyApp());
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Método para construir la interfaz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Título de la aplicación
      title: 'Flutter Demo',
      // Tema personalizado de la aplicación
      theme: ThemeData(
        // Establecer un esquema de colores personalizado
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Habilitar las características de Material3
        useMaterial3: true,
      ),
      // Página inicial de la aplicación
      home: TodoListScreen(
          tasks:
              tasks), // Pasar la lista de tareas a la pantalla de lista de tareas
    );
  }
}

// Clase para mostrar la lista de tareas
class TodoListScreen extends StatelessWidget {
  const TodoListScreen(
      {super.key,
      required this.tasks}); // Constructor de la pantalla de lista de tareas

  final List<Task> tasks; // Lista de tareas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra de aplicación con el título "Lista de tareas"
        title: const Text('Lista de tareas'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        // Constructor para generar una lista de elementos desplazables
        itemCount: tasks.length, // Número de elementos en la lista
        itemBuilder: (context, index) {
          return ListTile(
            // Elemento de lista que muestra el título de la tarea
            title: Text(tasks[index].title),
            onTap: () {
              // Acción cuando se toca un elemento de la lista
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(task: tasks[index])));
              // Navegar a la pantalla de detalles y pasar la tarea seleccionada
            },
          );
        },
      ),
    );
  }
}
