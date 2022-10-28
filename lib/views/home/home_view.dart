import 'package:flutter/material.dart';
import 'package:app_reto2_valtx/views/home/widgets/content.dart';
import 'package:app_reto2_valtx/views/home/widgets/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Header(), Content()],
    );
  }
}
