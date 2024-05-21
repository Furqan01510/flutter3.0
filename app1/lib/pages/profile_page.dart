import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int itemCount = 100;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 1} '),
            leading: const Icon(Icons.person),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    itemCount = itemCount - 1;
                  });
                },
                icon: const Icon(Icons.delete)),
            onTap: () {
              debugPrint('item ${index + 1} selected');
            },
          );
        });
  }
}
