import 'package:bancointer/app/home/mockups/category_mockup.dart';
import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final CategoryItem item;

  CategoryWidget({this.item});

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height / 10,
          width: height / 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
          ),
          child: Icon(
            widget.item.icon,
            color: secondaryColor,
            size: 50,
          ),
        ),
        SizedBox(height: 5),
        Text(
          widget.item.label,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
