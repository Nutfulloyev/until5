import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ZagruzitPage extends ConsumerWidget {
  static const String id="zagruzit_pagee";
  const ZagruzitPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
