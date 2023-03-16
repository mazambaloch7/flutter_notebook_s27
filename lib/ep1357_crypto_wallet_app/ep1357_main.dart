import 'package:flutter/material.dart';
import 'package:flutter_notebook_s27/ep1357_crypto_wallet_app/view/cwa_main_page.dart';

class CrytoWalletApp extends StatelessWidget {
  const CrytoWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CrytoWalletAppMainPage() ,
    );
  }
}
