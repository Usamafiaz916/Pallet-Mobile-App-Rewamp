// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class DataEntry extends StatefulWidget {
  const DataEntry({super.key});

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  bool _editMode = true;
  final _controllers = [
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
  ];
  final _controllers2 = [
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
  ];
  final _controllers3 = [
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
  ];
  final _controllers4 = [
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
  ];
  final _controllers5 = [
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
    TextEditingController(text: '0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Entry'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _editMode = !_editMode; // Toggle edit mode
                });
              },
              child: Text(_editMode ? 'Switch to View Mode' : 'Switch to Edit Mode'),
            ),
            DataTable(
              columns: const [
                DataColumn(label: Text('PALLET TYPE')),
                DataColumn(label: Text('A')),
                DataColumn(label: Text('B')),
                DataColumn(label: Text('C')),
                DataColumn(label: Text('Totals')),
              ],
              rows: [
                _buildDataRow('SD', _controllers),
                _buildDataRow('HD', _controllers2),
                _buildDataRow('P', _controllers3),
                _buildDataRow('XL', _controllers4),
                _buildDataRow('UPS', _controllers5),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(String palletType, List<TextEditingController> controllers) {
    return DataRow(
      cells: [
        DataCell(Text(palletType)),
        for (int i = 0; i < 3; i++)
          DataCell(
            TextField(
              controller: controllers[i],
              keyboardType: TextInputType.number,
              enabled: _editMode,
              onChanged: (_) {
                // Call calculate total function when value changes
                _calculateTotalForRow(palletType, controllers);
              },
            ),
          ),
        DataCell(
          Text(
            _calculateTotalForRow(palletType, controllers),
          ),
        ),
      ],
    );
  }

  String _calculateTotalForRow(String palletType, List<TextEditingController> controllers) {
    int total = 0;
    for (var controller in controllers) {
      total += int.tryParse(controller.text) ?? 0;
    }
    return total.toString();
  }
}
