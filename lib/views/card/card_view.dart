import 'package:flutter/material.dart';
import 'package:app_reto2_valtx/views/card/widget/content.dart';
import 'package:app_reto2_valtx/views/card/widget/header.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Header(),
        Content(),
      ],
    );
  }
}
