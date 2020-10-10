import 'package:flutter/material.dart';
import 'package:willbits_coverage/ui/show_users.dart';

class AddCoverage extends StatelessWidget {
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
                    onPressed: null,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 80,
                  left: 80,
                ),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.black26,
                  minHeight: 5,
                  value: 0.4,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Text(
                    'Who needs coverage?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  UsersList(),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    height: 40,
                    width: 200,
                    color: Colors.blue[100],
                    child: Center(
                      child: Text(
                        'Add a family member',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.pushNamed(context, '/addbeneficiary'),
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        width: 36,
        height: 36,
        image: AssetImage('assets/avatar.png'),
      ),
    );
  }
}
