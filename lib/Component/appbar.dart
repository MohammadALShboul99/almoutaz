import 'package:flutter/material.dart';
import 'package:mohammad_shboul/Component/const_color.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dashboard_rounded,
              color: kblue,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ))
      ],
    );
  }
}
