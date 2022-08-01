import 'package:flutter/material.dart';

class SimpleProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function? onTap;

  SimpleProfileItem({
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 24.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Color(0xffFFF7ED),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    6.0,
                  ),
                ),
              ),
              child: Icon(
                icon,
                color: Color(0xffFF7465),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                "$label",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
