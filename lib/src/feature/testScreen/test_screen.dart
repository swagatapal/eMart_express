import 'package:flutter/material.dart';

class DataInputScreen extends StatefulWidget {
  @override
  _DataInputScreenState createState() => _DataInputScreenState();
}

class _DataInputScreenState extends State<DataInputScreen> {
  List<Map<String, String>> _dataList = [];

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        String field1 = '';
        String field2 = '';

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Field 1'),
                onChanged: (value) {
                  field1 = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Field 2'),
                onChanged: (value) {
                  field2 = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (field1.isNotEmpty && field2.isNotEmpty) {
                    setState(() {
                      _dataList.add({'Field 1': field1, 'Field 2': field2});
                    });
                    Navigator.pop(context);
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _openBottomSheet,
              child: Text('Add Data'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _dataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Field 1: ${_dataList[index]['Field 1']}'),
                    subtitle: Text('Field 2: ${_dataList[index]['Field 2']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}