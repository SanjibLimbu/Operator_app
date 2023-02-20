import 'package:flutter/material.dart';
import 'package:operator_app/constant/color.dart';
import 'package:operator_app/constant/style.dart';

import 'package:operator_app/widget/profile.dart';
import 'package:operator_app/widget/table_list_no_heading.dart';
import 'package:operator_app/widget/table_widget.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({
    super.key,
    required List operatorData,
  }) : _operatorData = operatorData;

  final List _operatorData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileWidget(),
              const Text(
                'Table List',
                style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff484343),
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 3,
              ),
              TableWidget(
                operatorData: _operatorData,
              ),
              const SizedBox(
                height: 10,
              ),
              TableListNoHeader(operatorData: _operatorData),
              const SizedBox(
                height: 10,
              ),
              TableListNoHeader(operatorData: _operatorData),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(123, 32),
                        maximumSize: const Size(123, 32),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: btnColor),
                    child: Text(
                      'Exploer Here',
                      textAlign: TextAlign.center,
                      style: contentStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: whitePrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
