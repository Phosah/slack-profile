import 'package:flutter/material.dart';
import 'package:slack_profile/screens/webview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slack Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/efosa.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Column(
              children: [
                Text(
                  'Phosah',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GithubWebViewScreen()),
                      );
                    },
                    child: const Text('Open Github'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
