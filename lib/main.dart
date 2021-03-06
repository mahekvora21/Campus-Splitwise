import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/login.dart';
import 'screens/registration.dart';
import 'screens/group.dart';
import 'screens/all_groups.dart';
import 'screens/newpayment.dart';

void main() => runApp(CampusSplitWise());

class CampusSplitWise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        GroupScreen.id: (context) => GroupScreen(),
        AllGroupsScreen.id: (context) => AllGroupsScreen(),
        NewPaymentScreen.id: (context) => NewPaymentScreen(),
      },
    );
  }
}
