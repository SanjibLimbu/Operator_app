import 'package:flutter/material.dart';
import 'package:operator_app/constant/color.dart';
import 'package:operator_app/constant/style.dart';
import 'package:operator_app/userData/operator_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List _OperatorData;
  @override
  void initState() {
    _OperatorData = OperatorData().getOperatorData();
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                child: ListTile(
                  horizontalTitleGap: 10,
                  leading: Image.asset(
                    'images/profile.png',
                    height: 59,
                    width: 59,
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Operator',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: textPrimary.withOpacity(0.49),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Sita Nepali',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: textPrimary,
                        ),
                      ),
                    ],
                  ),
                  trailing: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'images/notification.png',
                        color: const Color(0xff363263),
                      ),
                      Positioned(
                          top: -12,
                          right: -3,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: const BoxDecoration(
                                color: Color(0xff363263),
                                shape: BoxShape.circle),
                            child: const Center(
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                      0xffF0DEDE,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
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
                      ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: _OperatorData.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    _OperatorData[index]['S.n'],
                                    // textAlign: TextAlign.center,
                                    style: contentStyle,
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    _OperatorData[index]['Name'],
                                    textAlign: TextAlign.center,
                                    style: contentStyle,
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    _OperatorData[index]['Address'],
                                    textAlign: TextAlign.center,
                                    style: contentStyle,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    _OperatorData[index]['Working Status']
                                        .toString(),
                                    textAlign: TextAlign.center,
                                    style: contentStyle,
                                  ),
                                ),
                              ],
                            );
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
