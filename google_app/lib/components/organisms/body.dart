import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:google_app/google_app.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // padding: const material.EdgeInsets.symmetric(
    //           horizontal: 14,
    //           vertical: 6,
    //         ),
    return material.Padding(
      padding: const material.EdgeInsets.fromLTRB(
        14,
        0,
        14,
        4,
      ),
      child: material.Card(
        margin: const material.EdgeInsets.all(0),
        color: Colors().bodyColor,
        child: Container(),
      ),
    );
    // Container(
    //   decoration: BoxDecoration(
    //     color: Colors().green,
    //     borderRadius: const BorderRadius.all(Radius.circular(16)),
    //   ),
    //   child: Container(),
    // );
  }
}
