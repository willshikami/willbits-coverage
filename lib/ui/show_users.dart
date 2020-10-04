import 'dart:async';
import 'package:flutter/material.dart';
import 'package:willbits_coverage/logic/user_service.dart';
import 'package:willbits_coverage/logic/user_modal.dart';

class UsersList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UsersList> {
  Future<User> loadUsers;

  // @override
  // void initState() {
  //   super.initState();
  //   print(loadUsers);
  //   loadUsers = fetchUsers();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<User>(
        future: fetchUsers(),
        builder: (context, snapshot) {
          print(snapshot.data.name[1]);
          if (snapshot.hasData) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      ProfileAvatar(),
                      Text(''),
                    ],
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('$snapshot.error');
          }
          return CircularProgressIndicator();
        },
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
