import 'package:flutter/material.dart';

class LimitePageViewWidget extends StatefulWidget {
  @override
  _LimitePageViewWidgetState createState() => _LimitePageViewWidgetState();
}

class _LimitePageViewWidgetState extends State<LimitePageViewWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 20),
      child: SizedBox(
        width: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Limite disponível',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'R\$ ',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 22,
                  ),
                ),
                Text(
                  '1.287,50',
                  style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey[300],
                  size: 28,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
