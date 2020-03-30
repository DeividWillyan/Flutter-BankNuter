import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class IsafeWidget extends StatefulWidget {
  final double mLeft;
  final double mRight;

  IsafeWidget({this.mLeft = 20, this.mRight = 20});

  @override
  _IsafeWidgetState createState() => _IsafeWidgetState();
}

class _IsafeWidgetState extends State<IsafeWidget>
    with SingleTickerProviderStateMixin {
  bool _show = true;

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 30), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  void _showAction() {
    setState(() {
      _show = !_show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: _firstChild(),
      secondChild: _secondChild(),
      crossFadeState:
          _show ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 350),
      reverseDuration: Duration(milliseconds: 350),
    );
  }

  Widget _firstChild() {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      margin: EdgeInsets.only(left: widget.mLeft, right: widget.mRight),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.verified_user,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  'n-safe',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: _showAction,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.height * 0.055,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 18.5, left: 9),
                      child: Text(
                        'º º º º',
                        style: TextStyle(
                          color: primeryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Gerar',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _secondChild() {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      margin: EdgeInsets.only(left: widget.mLeft, right: widget.mRight),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.verified_user,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'n-safe',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "1     3     9     6     7     2",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 5,
                          width: MediaQuery.of(context).size.width / 2,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              primeryColor,
                            ),
                            value: animation.value,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: _showAction,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.055,
                        width: MediaQuery.of(context).size.height * 0.055,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: primeryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Ocultar',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(
                  Icons.sim_card_alert,
                  color: primeryColor,
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    'O banco nuter nunca pede o código do seu i-safe por e-mail, SMS ou telefone.',
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
