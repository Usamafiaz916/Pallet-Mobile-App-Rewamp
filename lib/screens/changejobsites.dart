// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:http/http.dart' as http; // Import http package
import 'package:prominent_pallet/services/Api.dart';

class ChangeJobsites extends StatefulWidget {
  const ChangeJobsites({Key? key}) : super(key: key);

  @override
  State<ChangeJobsites> createState() => _ChangeJobsitesState();
}

class _ChangeJobsitesState extends State<ChangeJobsites> {
  final _advancedDrawerController = AdvancedDrawerController();

  Future<void> fetchJobsite() async {
    try {
      final response = await http.get(Uri.parse(APILinks.jobsite));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);
      } else {
        throw Exception('Failed to load jobsite');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF216241),
              Color(0xFF216241),
            ],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF216241),
          foregroundColor: Colors.white70,
          title: const Text('Change Jobsites'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: ElevatedButton(
          onPressed: fetchJobsite,
          child: Text('Fetch Jobsite'), // Change button text as needed
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'images/drawerLogo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.data_exploration),
                  title: Text('Data Entry'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.history),
                  title: Text('Data History'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.redo),
                  title: Text('Reasign Jobsites'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.display_settings),
                  title: Text('Display Jobsites'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
