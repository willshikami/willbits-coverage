import 'package:flutter/material.dart';
import 'package:willbits_coverage/logic/user_service.dart';
import 'package:willbits_coverage/logic/user_modal.dart';
import 'package:willbits_coverage/ui/add_beneficiary.dart';

class UsersList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UsersList> {
  List<User> _loadedUsers;

  @override
  void initState() {
    super.initState();
    UserService.getUsers().then((users) {
      setState(() {
        _loadedUsers = users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedUsers == null) {
      return Center(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      );
    }

    return ListView.builder(
        shrinkWrap: true,
        itemCount: _loadedUsers == null ? 0 : 3,
        itemBuilder: (context, index) {
          User user = _loadedUsers[index];

          return Column(
            children: [
              ListTile(
                leading: ProfileAvatar(),
                title: Text(
                  user.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
              Divider(
                indent: 18,
                endIndent: 18,
              ),
            ],
          );
        });
  }
}
