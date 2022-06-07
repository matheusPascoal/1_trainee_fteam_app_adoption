import 'package:flutter/material.dart';

class PerfilWidiget extends StatefulWidget {
  const PerfilWidiget({Key? key}) : super(key: key);

  @override
  State<PerfilWidiget> createState() => _PerfilWidigetState();
}

class _PerfilWidigetState extends State<PerfilWidiget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.wrap_text),
      title: Text(
        'Location',
        textAlign: TextAlign.center,
      ),
      subtitle: Text('Betim,Minas Gerais', textAlign: TextAlign.center),
      trailing: CircleAvatar(),
    );
  }
}
