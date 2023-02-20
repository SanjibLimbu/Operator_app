import 'package:flutter/material.dart';
import 'package:operator_app/constant/color.dart';
import 'package:operator_app/constant/style.dart';
import 'package:operator_app/userData/operator_data.dart';
import 'package:operator_app/widget/profile.dart';
import 'package:operator_app/widget/table_list.dart';
import 'package:operator_app/widget/table_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List _operatorData;
  @override
  void initState() {
    _operatorData = OperatorData().getOperatorData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileWidget(),
              const SizedBox(
                height: 40,
              ),
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
              TableWidget(operatorData: _operatorData),
              const SizedBox(
                height: 10,
              ),
              TableListNoHeader(operatorData: _operatorData),
              const SizedBox(
                height: 10,
              ),
              TableListNoHeader(operatorData: _operatorData),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
              height: 5,
            ),
            TableList(operatorData: _operatorData)
          ],
        ),
      ),
    );
  }
}
