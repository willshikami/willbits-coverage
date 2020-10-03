import 'dart:async';
import 'package:flutter/material.dart';
import 'package:willbits_coverage/logic/loadusersapi.dart';
import 'package:willbits_coverage/logic/usermodal.dart';

class UsersList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UsersList> {
  Future<User> loadUsers;

  @override
  void initState() {
    super.initState();
    loadUsers = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: loadUsers,
        builder: (context, snapshot) {
          // print(snapshot.data.name);
          if (snapshot.hasData) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      ProfileAvatar(),
                      Text(snapshot.data.name),
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
