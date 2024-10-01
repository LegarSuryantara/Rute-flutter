import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 20,
      color: Colors.grey[200], 
      child: const Center(
        child: Text(
          "Legar Suryantara | 362358302043",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  
  }
}