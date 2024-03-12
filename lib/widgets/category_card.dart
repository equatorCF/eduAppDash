// ignore_for_file: no_logic_in_create_state, unnecessary_import, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:education_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Widget implementation for displaying the category card
      child: Text(category.name),
    );
  }
}
