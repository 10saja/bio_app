import 'package:bio_app/secrens/BioScreen.dart';
import 'package:flutter/material.dart';
void main ()=>runApp(const BioApp());
class BioApp extends StatelessWidget {
  const BioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioScreen(),
    );
  }
}
