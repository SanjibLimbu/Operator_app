import 'package:flutter/material.dart';
import 'package:operator_app/constant/style.dart';
import 'package:operator_app/widget/table_list.dart';

class TableListNoHeader extends StatelessWidget {
  const TableListNoHeader({
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
        padding: tablePadding,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TableList(operatorData: _operatorData)
          ],
        ),
      ),
    );
  }
}
