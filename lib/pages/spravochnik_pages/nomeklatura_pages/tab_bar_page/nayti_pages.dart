import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NaytiPage extends ConsumerWidget {
  static const String id="nayti_pagee";
  const NaytiPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
