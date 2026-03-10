import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;


MenuItems({
  required this.title,
  required this.subtitle,
  required this.link,
  required this.icon});
}


final menuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Varias tarjetas en Flutter',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Varias indicadores de progreso en Flutter',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
];