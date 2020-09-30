import 'package:flutter/material.dart';

class AddBeneficiary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 32,
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: null)
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  Text(
                    'Adding a beneficiary',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                      left: 24,
                    ),
                    child: Text(
                      'Your beneficiary receives your retirement assets in the even of your death',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 150,
                  width: 350,
                  color: Colors.green[50],
                  child: Column(
                    children: [
                      Container(
                        child: Image(
                          width: 56,
                          height: 56,
                          image: AssetImage('assets/avatar.png'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            height: 40,
                            width: 200,
                            color: Colors.green[100],
                            child: Center(
                              child: Text(
                                'Add a trusted contact',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => {
                          Navigator.pushNamed(context, '/addcontact'),
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
