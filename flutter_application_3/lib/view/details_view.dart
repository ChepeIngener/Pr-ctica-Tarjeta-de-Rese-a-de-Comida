// Importación de paquetes necesarios
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Model/Task.dart';

// Definición de la pantalla de detalles
class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.task}); // Constructor de la pantalla de detalles

  final Task task; // Tarea que se mostrará en los detalles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra de aplicación con el título de la tarea
        title: Text(task.title),
        backgroundColor:
            Colors.blue, // Color de fondo de la barra de aplicación
      ),
      body: Center(
        // Cuerpo de la pantalla con la descripción de la tarea
        child: Text(task.description),
      ),
    );
  }
}
