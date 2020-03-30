import 'package:bancointer/app/home/mockups/category_mockup.dart';
import 'package:bancointer/app/home/mockups/menu_mockup.dart';
import 'package:bancointer/app/home/widgets/card_credit_widget.dart';
import 'package:bancointer/app/home/widgets/card_extrato_widget.dart';
import 'package:bancointer/app/home/widgets/card_widget.dart';
import 'package:bancointer/app/home/widgets/category_widget.dart';
import 'package:bancointer/app/home/widgets/menu_expanded_widget.dart';
import 'package:bancointer/app/home/widgets/pageView/investido_pv_widget.dart';
import 'package:bancointer/app/home/widgets/pageView/limite_pv_widget.dart';
import 'package:bancointer/app/home/widgets/pageView/saldo_pv_widget.dart';
import 'package:bancointer/app/shared/utils/utils.dart';
import 'package:bancointer/app/shared/widgets/isafe_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _pgSelect = 0;
  bool _expanded = false;

  ScrollController _scrollController = ScrollController();
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(
        initialPage: currentPage, keepPage: false, viewportFraction: 0.84);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      backgroundColor: Colors.grey[100],
    );
  }

  _body() {
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: height / 4.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primeryColor,
                  secondaryColor,
                ],
              ),
            ),
            child: PageView(
              onPageChanged: (v) {
                setState(() {
                  _pgSelect = v;
                });
              },
              children: [
                SaldoPageViewWidget(),
                LimitePageViewWidget(),
                InvestidoPageViewWidget(),
              ],
            ),
          ),
          Positioned(
            top: height / 8,
            left: 22,
            child: Row(
              children: [
                Text(
                  '_ ',
                  style: TextStyle(
                      color: _pgSelect == 0
                          ? Colors.white
                          : Colors.white.withOpacity(0.6),
                      fontSize: 40,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '_ ',
                  style: TextStyle(
                      color: _pgSelect == 1
                          ? Colors.white
                          : Colors.white.withOpacity(0.6),
                      fontSize: 40,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '_',
                  style: TextStyle(
                      color: _pgSelect == 2
                          ? Colors.white
                          : Colors.white.withOpacity(0.6),
                      fontSize: 40,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height / 5.2),
            child: Column(
              children: [
                AnimatedSize(
                  curve: Curves.easeInToLinear,
                  vsync: this,
                  duration: _expanded
                      ? Duration(milliseconds: 450)
                      : Duration(microseconds: 1),
                  child: Container(
                    height: _expanded ? height / 1.18 : height / 7.6,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: GridView.count(
                      padding: EdgeInsets.only(top: 0),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                        _expanded ? MenuItem.getItens().length : 6,
                        (index) {
                          return MenuExpandedWidget(
                            item: MenuItem.getItens()[index],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _expanded = !_expanded;
                      _scrollController.animateTo(
                          _scrollController.position.minScrollExtent,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.linear);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Icon(
                      _expanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      size: 40,
                      color: primeryColor,
                    ),
                  ),
                ),
                Container(
                  height: height / 3.6,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: 3,
                      controller: _pageController,
                      itemBuilder: (context, index) => cardAnimated(index),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: height / 8,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.shopping_cart,
                          color: primeryColor,
                          size: 50,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shopping',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(height: 5),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Aproveite todos todos os produtos com cashback!',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_forward,
                          color: primeryColor,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height / 2.3,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: GridView.builder(
                    itemCount: CategoryItem.getItens().length,
                    padding: EdgeInsets.only(top: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CategoryWidget(
                          item: CategoryItem.getItens()[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(20),
                  height: height / 10,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.person_pin,
                          color: primeryColor,
                          size: 55,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Oi, Deivid. \nPosso ajudar?',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_forward,
                          color: primeryColor,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                IsafeWidget(),
                SizedBox(height: 20),
                Container(
                  height: height / 5,
                  color: Colors.grey[200],
                  padding: EdgeInsets.only(left: 25, top: 30),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Convide seus amigos',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Indique a Conta Digital e chame todo mundo pra ficar livre das tarifas!',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 15),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 4.8,
                              margin: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [primeryColor, secondaryColor],
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'CONVIDAR',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  cardAnimated(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * .35)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value - 0.25) * 300,
            width: Curves.easeOut.transform(value) * 400,
            child: child,
          ),
        );
      },
      child: [
        CardWidget(
          label: 'Extrato',
          iconData: Icons.event_note,
          child: CardExtratoWidget(),
        ),
        CardWidget(
          label: 'Mastercard 8529',
          iconData: Icons.credit_card,
          child: CardCreditWidget(),
        ),
        CardWidget(
          label: 'Plataforma Aberta Nuter',
          iconData: Icons.local_parking,
          child: CardExtratoWidget(),
        )
      ][index],
    );
  }
}
