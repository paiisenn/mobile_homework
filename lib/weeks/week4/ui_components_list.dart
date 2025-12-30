import 'package:flutter/material.dart';
import 'text_detail.dart';
import 'image_detail.dart';
import 'textfield_detail.dart';
import 'row_layout.dart';
import 'icon_detail.dart';
import 'button_detail.dart';
import 'switch_detail.dart';
import 'checkbox_detail.dart';
import 'column_layout.dart';
import 'stack_layout.dart';

class UIComponentsList extends StatelessWidget {
  const UIComponentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Components List')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // DISPLAY
          const Text('Display', style: TextStyle(fontWeight: FontWeight.bold)),
          _item(
            context,
            title: 'Text',
            subtitle: 'Displays text',
            page: const TextDetail(),
          ),
          _item(
            context,
            title: 'Image',
            subtitle: 'Displays an image',
            page: const ImageDetail(),
          ),
          _item(
            context,
            title: 'Icon',
            subtitle: 'Displays an icon',
            page: const IconDetail(),
          ),
          _item(
            context,
            title: 'Button',
            subtitle: 'Clickable button',
            page: const ButtonDetail(),
          ),

          const SizedBox(height: 16),

          // INPUT
          const Text('Input', style: TextStyle(fontWeight: FontWeight.bold)),
          _item(
            context,
            title: 'TextField',
            subtitle: 'Input field for text',
            page: const TextFieldDetail(),
          ),
          _item(
            context,
            title: 'Switch',
            subtitle: 'On / Off input',
            page: const SwitchDetail(),
          ),
          _item(
            context,
            title: 'Checkbox',
            subtitle: 'Select option',
            page: const CheckboxDetail(),
          ),

          const SizedBox(height: 16),

          // LAYOUT
          const Text('Layout', style: TextStyle(fontWeight: FontWeight.bold)),
          _item(
            context,
            title: 'Row',
            subtitle: 'Arranges elements horizontally',
            page: const RowLayout(),
          ),
          _item(
            context,
            title: 'Column',
            subtitle: 'Arranges elements vertically',
            page: const ColumnLayout(),
          ),
          _item(
            context,
            title: 'Stack',
            subtitle: 'Overlapping widgets',
            page: const StackLayout(),
          ),
        ],
      ),
    );
  }

  Widget _item(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
      ),
    );
  }
}
