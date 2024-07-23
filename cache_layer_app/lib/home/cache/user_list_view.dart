import 'package:cache_layer_app/home/cache/user.dart';
import 'package:flutter/material.dart';

class UserListView extends StatelessWidget {
  UserListView({super.key});
  final users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(users[index].name), subtitle: Text(users[index].surname), trailing: Text(users[index].url),);
      },
    );
  }
}