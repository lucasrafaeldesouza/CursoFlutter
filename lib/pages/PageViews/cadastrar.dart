import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cadastrar extends StatelessWidget {
  const Cadastrar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              'Cadastrar',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
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
