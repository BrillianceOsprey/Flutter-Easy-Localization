import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'l10n/locale_keys.g.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("hello".tr().toString().toUpperCase()),
            // Text("text1".tr().toString()),
            Text(tr('hello')),
            Text(tr(LocaleKeys.text1)),
            GestureDetector(
              onTap: () async {
                // context.locale = const Locale('en', 'US');
                context.setLocale(const Locale('en', 'US'));
                // const newLocal = Locale('en', 'Us');
                // await context.setLocale(newLocal);
              },
              child: Container(
                height: 40,
                width: 190,
                color: Colors.blue,
                child: const Text("Switch to EN - US"),
              ),
            ),
            GestureDetector(
              onTap: () async {
                context.locale = const Locale('my', 'MM');
                // const newLocal = Locale('my', 'MM');
                // await context.setLocale(newLocal);
              },
              child: Container(
                height: 40,
                width: 190,
                color: Colors.red,
                child: const Text("Switch to my - MM"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
