import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final Widget child;
  final String label;
  final IconData iconData;
  CardWidget({this.child, this.label, this.iconData});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      widget.iconData,
                      color: primeryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      widget.label,
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            ),
            Expanded(child: widget.child),
          ],
        ),
      ),
    );
  }
}
