import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars(); // Limpiar cualquier snackbar existente
    
      final snackbar = SnackBar(
        content: const Text('Hola Mundo soy Rios Camacho'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.black,
      );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
  //Metodo para mostrar un dialogo personalizado
  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hola Mundo'),
        content: const Text('Soy Ruiz Perez'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancelar')),
          ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars & Dialogs')),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}