import 'package:flutter/material.dart';
import 'package:prominent_pallet/constants/config.dart';

class LayerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 584,
      decoration: const BoxDecoration(
        color: layerTwoBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(60.0),
        ),
      ),
    );
  }
}