import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  String title;
  IconData icon;
  

  DrawerItem({required this.title, required this.icon});
}

class DrawerItems {
  static final categorise =
      DrawerItem(title: "Категории", icon: Icons.grain_rounded,);
  static final analytics = DrawerItem(
      title: "Достижения", icon: Icons.switch_access_shortcut_add_outlined);
  static final about =
      DrawerItem(title: "Настройки аккаунта", icon: Icons.person_outlined);

  static final List<DrawerItem> all = [categorise, analytics, about];
}
