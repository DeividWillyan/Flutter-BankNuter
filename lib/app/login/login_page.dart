import 'package:bancointer/app/home/home_page.dart';

import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:bancointer/app/shared/widgets/isafe_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _login = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: _body(),
    );
  }

  _body() {
    double height = MediaQuery.of(context).size.height;

    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primeryColor, secondaryColor]),
          ),
          height: height / 2.2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'banco',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nuter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 370,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Container(
                height: height / 5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DEIVID WILLYAN RODRIGUES FABIANO',
                                  maxLines: 2,
                                ),
                                Text(
                                  '1345364-0',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: RaisedButton(
                              onPressed: () {},
                              elevation: 1,
                              child: Text(
                                'ALTERAR',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[800]),
                              ),
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _login = true;
                            Future.delayed(Duration(seconds: 2)).then((v) {
                              _login = false;
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            });
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [primeryColor, secondaryColor],
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: _login
                                ? CircularProgressIndicator(
                                    backgroundColor: Colors.white,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      primeryColor,
                                    ),
                                  )
                                : Text(
                                    'ENTRAR',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              IsafeWidget(mLeft: 0, mRight: 0),
              SizedBox(height: 20),
              Container(
                height: height / 7,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'nuter',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'pag',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: height * 0.055,
                            width: height * 0.055,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.attach_money,
                              color: primeryColor,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Pagar',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: height * 0.055,
                            width: height * 0.055,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.payment,
                              color: secondaryColor,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Receber',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
