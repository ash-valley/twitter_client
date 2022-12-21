import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:twitter_client/model/secure_storage/secure_storage.dart';
import 'package:twitter_client/page/home.dart';
import 'package:twitter_client/page/login.dart';
import 'package:twitter_client/repository/secure_storage.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) {
          return const Login();
        },
      ),
    ],
    redirect: (context, state) {
      if (ref
              .watch(readSecureStorageProvider(SecureStorageKey.twitterAuth))
              .valueOrNull ==
          null) {
        return '/login';
      }
      return null;
    },
  );
}
