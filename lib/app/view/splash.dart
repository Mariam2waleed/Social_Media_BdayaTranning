import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Assets.images.logo-white.image(),
          SizedBox(height: 8),
          CircularProgressIndicator.adaptive(),
        ],
      ),
    );
  }
}




// example // // 
// import 'package:cbirm_flutter/common.dart';

/// Splash screen should be theme/locale independent
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key, this.child});
//   final Widget? child;
//   @override
//   Widget build(BuildContext context) {
//     final initService = getIt<InitService>();
//     final actualChild = child ?? const SizedBox.shrink();
//     return FutureBuilder(
//       future: initService.init(context),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           //display errors during initialization
//           return ErrorWidget(
//             snapshot.error!,
//           );
//         }
//         if (snapshot.connectionState != ConnectionState.done) {
//           //if not done, show loading
//           return const _LoadingSplashScreen();
//         }
//         return actualChild;
//       },
//     );
//   }
// }

// class _LoadingSplashScreen extends StatelessWidget {
//   const _LoadingSplashScreen();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Assets.images.logo.image(),
//         const SizedBox(height: 8),
//         const CircularProgressIndicator.adaptive(),
//       ],
//     );
//   }
// }
