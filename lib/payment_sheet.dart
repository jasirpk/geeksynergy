import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Amount: ₹12,995',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Colors.blue,
              ),
              title: Text(
                'Credit/Debit Card',
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.green,
              ),
              title: Text('UPI'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.blueAccent,
              ),
              title: Text('Net Banking'),
              onTap: () {},
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
