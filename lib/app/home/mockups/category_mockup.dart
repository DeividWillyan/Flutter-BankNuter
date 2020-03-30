import 'package:flutter/material.dart';

class CategoryItem {
  IconData icon;
  double iconSize;
  String label;

  CategoryItem({this.icon, this.iconSize, this.label});

  static List<CategoryItem> getItens() {
    return [
      CategoryItem(icon: Icons.home, iconSize: 36, label: 'Casa'),
      CategoryItem(icon: Icons.local_activity, iconSize: 36, label: 'Entretenimento'),
      CategoryItem(icon: Icons.phone_android, iconSize: 36, label: 'Tecnologia'),
      CategoryItem(icon: Icons.airport_shuttle, iconSize: 36, label: 'Transporte'),
      CategoryItem(icon: Icons.gamepad, iconSize: 36, label: 'Esporte'),
      CategoryItem(icon: Icons.airplanemode_active, iconSize: 36, label: 'Viagem'),
      CategoryItem(icon: Icons.security, iconSize: 36, label: 'Saúde'),
      CategoryItem(icon: Icons.brush, iconSize: 36, label: 'Beleza'),
      CategoryItem(icon: Icons.color_lens, iconSize: 36, label: 'Moda')
    ];
  }
}
