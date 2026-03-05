import 'package:flutter/material.dart';
import 'package:widget_rioscamacho/config/menu/menu_items.dart';
import 'package:widget_rioscamacho/presentation/screen/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluter + Material 3'),
      ),
      body: const _HomeView()
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length, 
      itemBuilder: (context, index){
        final menuItem = menuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon,color: colors.primary,),
      trailing: const Icon(Icons.arrow_forward_ios_outlined)  ,
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: (){
        //Navegar a la ruta del item
        Navigator.of(context).push(
        MaterialPageRoute(
        builder: (context) => const ButtonsScreen(),
        ),
        );
      }
      );
  }
}