import 'package:flutter/material.dart';
import 'package:operator_app/constant/color.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 40
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
              color: btnColor,
            ),
            Positioned(
                top: -12,
                right: -3,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      color: btnColor,
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
    );
  }
}
