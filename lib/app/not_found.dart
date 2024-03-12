// import 'package:cbirm_flutter/common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNotFoundWidget extends StatelessWidget {
  const CustomNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Page not found',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20, //.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),  //.0),
          ElevatedButton(
            onPressed: () {
              final router = GoRouter.of(context);
              if (router.canPop()) {
                router.pop();
              } else {
                router.go('/');
              }
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            child: const Text('Go up'),
          ),
        ],
      ),
    );
  }
}
