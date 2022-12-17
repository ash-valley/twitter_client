import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_client/repository/twitter_api.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter'),
      ),
      body: const Timeline(),
    );
  }
}

class Timeline extends ConsumerWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(timelineProvider).when(
          data: (data) => ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: data.length,
            itemBuilder: (context, index) => Tweet(tweet: data[index]),
          ),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}

class Tweet extends ConsumerWidget {
  const Tweet({
    super.key,
    required this.tweet,
  });

  final TweetData tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.abc),
      title: Text(tweet.toString()),
      subtitle: Text(tweet.text),
    );
  }
}
