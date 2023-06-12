import 'package:artificial_intelligence/constants/constants.dart';
import 'package:artificial_intelligence/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        backgroundColor: cardColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: TextWidget(
                  label: "Chosen Model:",
                  fontSize: 16,
                )),
                Flexible(flex: 2, child: ModelsDropDownWidget())
              ],
            ),
          );
        });
  }
}
