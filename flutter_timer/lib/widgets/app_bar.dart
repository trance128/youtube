import 'package:flutter/material.dart';

import 'reset_button.dart';

AppBar buildAppBar({BuildContext context, Function reset}) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      leading: Text(''),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: ResetButton(
            size: 40,
            onPressed: reset,
          ),
        ),
      ],
    );
}