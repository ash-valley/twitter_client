import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/model/twitter/tweet_data_with_author.dart';
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

  final TweetDataWithAuthor tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: tweet.userData.profileImageUrl != null
          ? Image.network(tweet.userData.profileImageUrl!)
          : const Icon(Icons.account_circle),
      title: SelectableText(tweet.userData.name),
      subtitle: Text(tweet.tweetData.text),
    );
  }
}
