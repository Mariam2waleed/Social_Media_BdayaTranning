import 'package:flutter/material.dart';
import 'package:social_media/app/_exports.dart';
import 'package:social_media/bootstrap.dart';

void main() {
  FlutterError.onError = (details) {
    print(details.toStringShort());
  };
  bootstrap(() => const App());
}
