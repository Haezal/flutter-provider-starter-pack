import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starterpack/models/models.dart';
import 'package:starterpack/providers/auth.dart';
import 'package:starterpack/providers/providers.dart';

class StudentHomeScreen extends StatefulWidget {
  StudentHomeScreen({Key key}) : super(key: key);

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    AuthProvider auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('UM Touch'),
      ),
      body: Center(
        child: Text('Welcome page ${user.name} (${user.userType})'),
      ),
    );
  }
}
