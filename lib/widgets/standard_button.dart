import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({super.key, required this.textInfo, this.onClick, this.isAccent = false});

  final String textInfo;
  final VoidCallback? onClick;
  final bool isAccent;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          if (onClick != null) {
             onClick!();
          } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Message'),
              content: Text('$textInfo is not working right now'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
          }
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(width: 1, color: Colors.grey),
          backgroundColor: isAccent ? Theme.of(context).colorScheme.primary : Colors.transparent,
        ),
        child: Text(textInfo, style: TextStyle(color: isAccent ? Colors.white : Theme.of(context).colorScheme.primary)),
    );
  }
}