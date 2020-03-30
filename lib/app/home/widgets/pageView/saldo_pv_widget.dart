import 'package:flutter/material.dart';

class SaldoPageViewWidget extends StatefulWidget {
  @override
  _SaldoPageViewWidgetState createState() => _SaldoPageViewWidgetState();
}

class _SaldoPageViewWidgetState extends State<SaldoPageViewWidget> {
  bool _isVisible = true;

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
              'Saldo em conta',
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
                _isVisible
                    ? Text(
                        '1.000.000,00',
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    : Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width / 2.98,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.grey.withOpacity(.6),
                              Colors.white.withOpacity(.6)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey[300],
                    size: 28,
                  ),
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
