import 'package:business_card_wallet/color_schemes.g.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '명함지갑',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      home: const BusinessCarWallet(title: '명함지갑'),
    );
  }
}

class BusinessCarWallet extends StatefulWidget {
  const BusinessCarWallet({super.key, required this.title});

  final String title;

  @override
  State<BusinessCarWallet> createState() => _BusinessCarWalletState();
}

class _BusinessCarWalletState extends State<BusinessCarWallet> {
  int screenIndex = 0;
  List<Widget> screenList = [Text('홈스크린'), Text('채팅 스크린'), Text('마이 스크린')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: screenList[screenIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: screenIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: '명함지갑'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: '메뉴')
              ],
              onTap: (value) {
                setState(() {
                  screenIndex = value;
                });
              },
            )));
  }
}
