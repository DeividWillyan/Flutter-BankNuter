import 'package:flutter/material.dart';

class InvestidoPageViewWidget extends StatefulWidget {
  @override
  _InvestidoPageViewWidgetState createState() =>
      _InvestidoPageViewWidgetState();
}

class _InvestidoPageViewWidgetState extends State<InvestidoPageViewWidget> {
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
              'Total investido',
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
                  '0,00',
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
            SizedBox(height: 5),
            Text(
              'Atualizado neste momento',
              style: TextStyle(color: Colors.grey[300], fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
