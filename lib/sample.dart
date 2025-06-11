import 'package:flutter/material.dart';

void main() => runApp(ListWithAutocompleteApp());

class ListWithAutocompleteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListAutocompleteScreen(),
    );
  }
}

class ListAutocompleteScreen extends StatefulWidget {
  @override
  _ListAutocompleteScreenState createState() => _ListAutocompleteScreenState();
}

class _ListAutocompleteScreenState extends State<ListAutocompleteScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> suggestions = [
    "Apple", "Banana", "Orange", "Grapes", "Mango", "Pineapple", "Watermelon"
  ];

  List<String> selectedItems = [];

  void _addItem(String value) {
    if (value.isNotEmpty && !selectedItems.contains(value)) {
      setState(() {
        selectedItems.add(value);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Autocomplete List Input")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return suggestions.where((String option) {
                  return option
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String selection) {
                _addItem(selection);
              },
              fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
                _controller.text = controller.text;
                return TextFormField(
                  controller: _controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    labelText: 'Enter item',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () => _addItem(_controller.text.trim()),
                    ),
                  ),
                  onEditingComplete: onEditingComplete,
                );
              },
            ),
            SizedBox(height: 20),
            if (selectedItems.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: selectedItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.check),
                      title: Text(selectedItems[index]),
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
