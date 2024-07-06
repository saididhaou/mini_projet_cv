import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo.jpg"),
                  radius: 80,
                ),
              ),
            ),
            const Center(
              child: Text(
                'SAIDI DHAOU',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Icon(Icons.phone_in_talk),
                const SizedBox(width: 15),
                const SelectableText("+21697793301"),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri(scheme: 'tel', path: '+21697793301');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      print("Cannot launch this url");
                    }
                  },
                  child: Icon(Icons.phone),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 15),
                TextButton(
                  onPressed: () async {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                    final Uri emailUrl = Uri(
                      scheme: 'mailto',
                      path: 'infonet.saidi@gmail.com',
                      query: encodeQueryParameters(
                        <String, String>{
                          'subject': 'Your subject here',
                          'body': 'Write your message to Me',
                        },
                      ),
                    );
                    if (await canLaunchUrl(emailUrl)) {
                      await launchUrl(emailUrl);
                    } else {
                      print("Cannot launch this url");
                    }
                  },
                  child: Text('infonet.saidi@gmail.com'),
                ),
              ],
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage("assets/images/github_icon.png"),
                  width: 25,
                  height: 25,
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () async {
                    final Uri gitlUrl =
                        Uri.parse('https://github.com/saididhaou');
                    if (await canLaunchUrl(gitlUrl)) {
                      await launchUrl(gitlUrl,
                          mode: LaunchMode.externalApplication);
                    } else {
                      print("Cannot launch this url");
                    }
                  },
                  child: Text('github.com/saididhaou'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
