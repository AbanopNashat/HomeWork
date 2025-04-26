import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_add_Icon.dart';
import 'package:tasks_app/widgets/custom_text_field.dart';

class AddTextBar extends StatelessWidget {
  const AddTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      elevation: 20,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 4, right: 8),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: CustomTextField(),
              ),
            ),
            CustomAddIcon(),
          ],
        ),
      ),
    );
  }
}
