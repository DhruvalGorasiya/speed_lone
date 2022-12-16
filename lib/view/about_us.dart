import 'package:flutter/material.dart';
import 'package:lone_counter/widget/app_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'About Us'),
      body: SingleChildScrollView(
        child: Column(
          children:const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Our company provide an online place to lend a helping hand to customers who borrow money for their short- term needs at the tap of a button. A market that provides diverse loans such as personal loans, maternity expenses, and other finance on low -cost EMIs Our purpose is to create a bond between the lenders and the borrower. Loans are granted on the base of your credit history and repayment capacity, which are approved with least documentation. Guaranteed world-class services, flawless customer service, reliable and confidential commitment when you deal with us. In the process of your service, our goal is to become India's leading platform for the immediate cash loan facility.Cash Loan is an online lending platform that Helps to People Borrow for Short time or small Need within Blink of eyes. We Offer best Interest Rate Along for Regular Borrowers and you Get Instant and Without paper work instant cash in your account with in a minutes CreditLoan is also Offer for 06-30 month for those people who is in emergency."
                  "\n Email: support@jeevancapital.com",style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
      ),
    );
  }
}
