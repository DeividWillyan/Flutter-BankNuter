import 'package:bancointer/app/home/widgets/custom_graphic_widget.dart';
import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class CardCreditWidget extends StatefulWidget {
  @override
  _CardCreditWidgetState createState() => _CardCreditWidgetState();
}

class _CardCreditWidgetState extends State<CardCreditWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: CustomPaint(
                      isComplex: true,
                      foregroundPainter: MyPainter(
                        width: 20,
                        lineColor: Colors.green,
                        completeColor: Colors.grey[500],
                        completePercent: 50.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fatura atual'),
                  Text(
                    'R\$ 0,00',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Limite disponível'),
                  Text(
                    'R\$ 0,00',
                    style: TextStyle(
                      color: primeryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height / 100) * 0.1),
                  Text(
                    'Próximas faturas',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize:
                            (MediaQuery.of(context).size.height / 100) * 1.4),
                  ),
                  Text(
                    'R\$ 1312,50',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize:
                            (MediaQuery.of(context).size.height / 100) * 1.4),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
