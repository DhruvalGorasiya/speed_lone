import 'package:flutter/material.dart';
import 'package:lone_counter/widget/app_bar.dart';

class MembershipView extends StatelessWidget {
  const MembershipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Free MemberShip"),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "If you want to become a free member, please contact the customer mail, mention your load requirement and you get the excellent recommendation of the best platform after the review your profile."
          "\n Email: support@jeevancapital.com",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
