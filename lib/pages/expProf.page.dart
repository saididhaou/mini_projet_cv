import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import '../localization/locales.dart';

class ExpProfPage extends StatefulWidget {
  const ExpProfPage({super.key});

  @override
  State<ExpProfPage> createState() => _ExpProfPageState();
}

class _ExpProfPageState extends State<ExpProfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  LocaleData.exp_title.getString(context),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                LocaleData.exp_label1.getString(context),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(LocaleData.exp_txt1.getString(context)),
              const SizedBox(height: 20.0),
              Text(
                LocaleData.exp_label2.getString(context),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(LocaleData.exp_txt2.getString(context)),
              const SizedBox(height: 20.0),
              Text(
                LocaleData.exp_label3.getString(context),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(LocaleData.exp_txt3.getString(context)),
              const SizedBox(height: 20.0),
              Text(
                LocaleData.exp_label4.getString(context),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(LocaleData.exp_txt4.getString(context)),
            ],
          ),
        ),
      ),
    );
  }
}
