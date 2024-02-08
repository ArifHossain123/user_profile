import 'package:flutter/material.dart';

void main() {
  runApp(const UserProfile());
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage(""))
                  ),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
