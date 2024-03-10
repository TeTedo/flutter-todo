import 'package:flutter/material.dart';
import 'package:todo/widgets/button.dart';
import 'package:todo/widgets/currency-card.dart';

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  var tetedo = Player(name: 'tetedo');
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'TotalBalance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black),
                      Button(
                          text: "Request",
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    customOffset: CustomOffset(dx: 0, dy: 0),
                  ),
                  CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    customOffset: CustomOffset(dx: 0, dy: -20),
                  ),
                  CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '6 428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    customOffset: CustomOffset(dx: 0, dy: -40),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
