import 'package:flutter/material.dart';
import 'package:willbits_coverage/logic/user_service.dart';
import 'package:willbits_coverage/logic/user_modal.dart';

class UsersList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UsersList> {
  bool _loading = false;
  List<User> _loadedUsers;

  @override
  void initState() {
    super.initState();
    _loading = true;
    UserService.getUsers().then((users) {
      setState(() {
        _loadedUsers = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedUsers == null) {
      return Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
        ),
      );
    }

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: _loadedUsers == null ? 0 : _loadedUsers.length,
          itemBuilder: (context, index) {
            User user = _loadedUsers[index];
            // print(
            //     '=============================== $_loadedUsers  ================================');
            return ListTile(
              leading: ProfileAvatar(),
              title: Text(user.name),
              trailing: Icon(Icons.chevron_right_rounded),
            );
          }),
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
