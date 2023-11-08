import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TimeOfDay? selectedIssueTime;
  TimeOfDay? selectedReturnTime;

  String _computerName = '';
  String _lapnumber = '';
  String _Name = '';
  String selectedValue = 'Workers'; // Initialize the selected value
  List<String> options = ['Workers', 'Students', 'Others'];

  Future<void> _selectIssueTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedIssueTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedIssueTime = picked;
      });
    }
  }

  Future<void> _selectReturnTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedReturnTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedReturnTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Asus'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _Name = value!;
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(labelText: 'Computer Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a computer name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _computerName = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Lap Number'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a  Lap number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _lapnumber = value!;
                  },
                ),
                SizedBox(height: 10,),
                DropdownButton<String>(
                  value: selectedValue, // Set the selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!; // Update the selected value
                    });
                  },
                  items: options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Issue Time: ${selectedIssueTime?.format(context) ?? "Select Time"}'),
                    IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: _selectIssueTime,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Return Time: ${selectedReturnTime?.format(context) ?? "Select Time"}'),
                    IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: _selectReturnTime,
                    ),

                  ],
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple
                ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      // You can now use _Name, _computerName, _description, _specifications
                      // and selectedIssueTime, selectedReturnTime for further processing.
                    }
                  },
                  child: Text('Submit',),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}