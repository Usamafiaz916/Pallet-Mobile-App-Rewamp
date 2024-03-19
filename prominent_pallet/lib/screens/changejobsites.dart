// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class ChangeJobsites extends StatefulWidget {
  const ChangeJobsites({super.key});

  @override
  State<ChangeJobsites> createState() => _ChangeJobsitesState();
}

class _ChangeJobsitesState extends State<ChangeJobsites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Jobsites'
        ),
      ),
    );
  }
}