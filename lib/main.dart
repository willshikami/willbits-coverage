import 'package:flutter/material.dart';
import 'package:willbits_coverage/ui/add_beneficiary.dart';
import 'package:willbits_coverage/ui/coverage.dart';
import 'package:willbits_coverage/ui/select_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Coverage',
      initialRoute: '/addcoverage',
      routes: {
        '/addcoverage': (context) => AddCoverage(),
        '/addbeneficiary': (context) => AddBeneficiary(),
        '/addcontact': (context) => AddContactBottomSheet(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
