import 'package:flutter/material.dart';
import 'package:email_gestos/model/email.dart';
import 'package:intl/intl.dart';

class BodyScreen extends StatelessWidget {
  final Email email;
  const BodyScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('From: ' + email.from,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Montserrat')),
            ),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Divider(color: Colors.red))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(email.subject),
                  Text(
                      DateFormat('yyyy-MM-dd HH:mm').format(
                        email.dateTime,
                      ),
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Montserrat')),
                ],
              ),
            ),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Divider(color: Colors.red))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(email.body,
                  style: const TextStyle(fontFamily: 'Montserrat')),
            ),
          ],
        ),
      ),
    );
  }
}
