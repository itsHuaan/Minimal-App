import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  final String text;
  final IconData? icon;
  final Duration duration;
  const MyDialog({
    super.key,
    required this.text,
    required this.icon,
    this.duration = const Duration(milliseconds: 3000),
  });

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  bool _isDialogActive = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(widget.duration, () {
      if (_isDialogActive && mounted) {
        Navigator.of(context).pop(); // Close the dialog if it's still active
      }
    });
  }

  @override
  void dispose() {
    _isDialogActive = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Column(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 10),
            Icon(
              widget.icon,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
