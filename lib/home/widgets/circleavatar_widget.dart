import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xffDEDBDB),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color(0xffFFA3B3),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 4,
            backgroundColor: Color(0xffDEDBDB),
          )
        ],
      ),
    );
  }
}
