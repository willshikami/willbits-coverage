import 'package:flutter/material.dart';
import 'package:willbits_coverage/ui/addbeneficiary.dart';
import 'package:willbits_coverage/ui/selectcontact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Beneficiary',
      initialRoute: '/addbeneficiary',
      routes: {
        '/addbeneficiary': (context) => AddBeneficiary(),
        '/addcontact': (context) => AddContactBottomSheet(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
