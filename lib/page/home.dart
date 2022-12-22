import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:twitter_client/service/time_line_service.dart';
import 'package:twitter_client/state/tweet_state.dart';

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
    return ref.watch(timelineStateProvider).when(
          data: (data) => ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: data.tweets.length + 1,
            itemBuilder: (context, index) {
              if (index < data.tweets.length) {
                return Tweet(tweet: data.tweets[index]);
              }
              if (data.hasNext) {
                Future(
                    ref.read(timelineStateProvider.notifier).loadItemsIfNeeded);
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          error: (error, stackTrace) => Column(
            children: [
              Text(error.toString()),
              TextButton(
                onPressed: () => context.go('/login'),
                child: const Text('go login'),
              )
            ],
          ),
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

  final TweetState tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          // leading: tweet.userData.profileImageUrl != null
          //     ? Image.network(
          //         tweet.userData.profileImageUrl!,
          //         width: 40,
          //       )
          //     : const Icon(Icons.account_circle),
          // title: Text(tweet.userData.name),
          subtitle: SelectableText(tweet.text),
        ),
      ],
    );
  }
}
