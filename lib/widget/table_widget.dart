import 'package:flutter/material.dart';
import 'package:operator_app/constant/style.dart';

import 'package:operator_app/widget/table_list.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required List operatorData,
  }) : _operatorData = operatorData;

  final List _operatorData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(
            0xffF0DEDE,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 15,
          right: 2,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text(
                    'S.n.',
                    // textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Text(
                    'Name',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Address',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    'Working Status',
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            TableList(operatorData: _operatorData)
          ],
        ),
      ),
    );
  }
}
