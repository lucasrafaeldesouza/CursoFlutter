import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              'First Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
    // return Column(
    //   children: [
    //     Container(
    //       color: Colors.blue,
    //       height: 100,
    //       width: 170,
    //       child: Center(
    //         child: Text('CONTAINER 1'),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.black,
    //       height: 100,
    //       width: 180,
    //       child: Center(
    //         child: Text(
    //           'CONTAINER 2',
    //           style: TextStyle(color: Colors.white),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
