import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/service/twitter_api.dart';
import 'package:twitter_client/service/twitter_login.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Test(),
          ],
        ),
      ),
    );
  }
}

class Test extends ConsumerWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final authResult = await ref.read(twitterLoginProvider).login();
        if (authResult == null) {
          return;
        }
        TwitterApiWrapper(authResult: authResult).getTimeLine();
      },
      child: const Text('twitter login'),
    );
  }
}
