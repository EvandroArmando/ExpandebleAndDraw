import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 12,
        actions: [
        ],
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        title: Title(color: Colors.black, child: Row(
          children: [
            Icon(Icons.home),
            Icon (Icons.notification_add)    
          ],
        ),
      ),
      ),
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("data"),
            )
          ],
          
        ),
      ),
    );
  }
}