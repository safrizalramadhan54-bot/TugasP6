import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home:Scaffold(
        appBar: AppBar(title: const Text('Contoh Aplikasi Listview')),
        body:const Column(
          children: [
            InfoRow(ikon: Icons.mail, label: 'Email', value: 'ical@gmail.com'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.telegram, label: 'Telegram', value: 'ICAlGIMANG'),
            SizedBox(height: 10),
            InfoRow(ikon: Icons.phone, label: 'Telephone', value: '08213132432'),
          ],
        )
      )
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
    this.catatan,
  });

  final IconData ikon;
  final String label;
  final String value;
  final String? catatan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: Icon(ikon),
              title:Text(label),
              subtitle: Text(value),
            );
  }
}