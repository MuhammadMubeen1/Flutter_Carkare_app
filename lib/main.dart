import 'package:flutter/material.dart';
import 'package:kar_care_user/screens/home/home.dart';
import 'package:kar_care_user/screens/packages/package_detail.dart';

import 'screens/packages/package_list.dart';
import 'screens/profile/profile.dart';
import 'screens/profile/update_profile.dart';
import 'screens/vehicals/add_vehical.dart';
import 'screens/vehicals/select_vehical.dart';
import 'screens/vehicals/vehical.dart';
import 'screens/vehicals/vehical_list.dart';
import 'widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // ignore: prefer_const_constructors
      home: PackageDetail(),
    );
  }
}
