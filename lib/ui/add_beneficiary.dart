import 'package:flutter/material.dart';
import 'package:willbits_coverage/ui/show_users.dart';

class AddBeneficiary extends StatelessWidget {
  void showContactBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (ctx) {
        return BottomSheet();
      },
    );
  }

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
                      onPressed: () {
                        Navigator.pop(context);
                      }),
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
                      InkWell(
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
                          showContactBottomSheet(context),
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

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Existing contacts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              UsersList(),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Add to Catch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              ListTile(
                leading: ProfileAvatar(),
                title: Text('New Contact'),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
        ),
      ),
    );
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
