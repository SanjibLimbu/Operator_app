import 'package:flutter/material.dart';
import 'package:operator_app/constant/style.dart';

class TableList extends StatelessWidget {
  const TableList({
    super.key,
    required List operatorData,
    this.rowBgColor = false,
  }) : _operatorData = operatorData;

  final List _operatorData;
  final bool rowBgColor;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: _operatorData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: index == 0 && rowBgColor == true
                      ? const Color(0xff6B68F3).withOpacity(0.33)
                      : const Color(0xffF5F5F5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      _operatorData[index]['S.n'],
                      style: contentStyle,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      _operatorData[index]['Name'],
                      style: contentStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        _operatorData[index]['Address'],
                        style: contentStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(80, 20),
                          maximumSize: const Size(80, 20),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor:
                              _operatorData[index]['Working Status'] == true
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        child: Text(
                          _operatorData[index]['Working Status'] == true
                              ? "Operating"
                              : 'Not Operating',
                              textAlign: TextAlign.center,
                          style: contentStyle.copyWith(
                              color: const Color(0xffF8F8F8)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
