// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData trailingIcon;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.title,
    this.trailingIcon = Icons.arrow_forward_ios,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        trailing: Icon(trailingIcon),
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
    );
  }
}
