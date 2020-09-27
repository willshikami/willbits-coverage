import 'package:flutter/material.dart';

class AddBeneficiary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
