// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prominent_pallet/components/account_settings.dart';
import 'package:prominent_pallet/components/change_jobsite.dart';
import 'package:prominent_pallet/components/display_jobsite.dart';
import 'package:prominent_pallet/components/entering_data.dart';
import 'package:prominent_pallet/components/history.dart';
import 'package:prominent_pallet/components/home.dart';
import 'package:prominent_pallet/components/pallet_grades.dart';
import 'package:prominent_pallet/components/pallet_types.dart';
import 'package:prominent_pallet/components/reassign_jobsite.dart';
import 'package:prominent_pallet/components/reset_password.dart';
import 'package:prominent_pallet/constants/reusable_listTile.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            CustomListTile(
                title: 'Pallet Types',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PalletTypes()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Pallet Grades',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PalletGradesComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Entering Data',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EnteringDataComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Home',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Display Jobsite',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DisplayJobsiteComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Change Jobsite',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChangeJobsiteComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Reassign Jobsite',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReassignJobsiteComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'History',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Account Settings',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountSettingsComponent()));
                }),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                title: 'Reset Password',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPasswordComponent()));
                }),
          ],
        ),
      ),
    );
  }
}
