import 'package:couriers/import/common_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatementScreen extends StatelessWidget {
  const StatementScreen({super.key});

  final List<Map<String, dynamic>> transactions = const [
    {
      'isDebit': true,
      'title': 'Debit',
      'description': 'Withdraw',
      'date': '9/11/2023',
      'time': '01:30 pm',
      'amount': '\$250.00',
    },
    {
      'isDebit': false,
      'title': 'Credit',
      'description': 'Order # 251',
      'date': '9/11/2023',
      'time': '01:30 pm',
      'amount': '\$250.00',
    },
    {
      'isDebit': true,
      'title': 'Debit',
      'description': 'Withdraw',
      'date': '9/11/2023',
      'time': '01:30 pm',
      'amount': '\$250.00',
    },
    {
      'isDebit': false,
      'title': 'Credit',
      'description': 'Order # 251',
      'date': '9/11/2023',
      'time': '01:30 pm',
      'amount': '\$250.00',
    },
    // Add more transactions as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWithArrow(title: "Statement"),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    text: 'Export Statement',
                    color: kRed,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    decoration: TextDecoration.underline,
                    decorationColor: kRed,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: transactions.length,
                  separatorBuilder: (context, index) => SizedBox(height: 20.h),
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return TransactionItem(
                      isDebit: transaction['isDebit'],
                      title: transaction['title'],
                      description: transaction['description'],
                      date: transaction['date'],
                      time: transaction['time'],
                      amount: transaction['amount'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final bool isDebit;
  final String title;
  final String description;
  final String date;
  final String time;
  final String amount;

  const TransactionItem({
    super.key,
    required this.isDebit,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          // Icon (left side)
          Container(
            height: 40.w,
            width: 40.w,
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDebit ? kFFE6E7 : kD5FEE0,
            ),
            child: isDebit
                ? SvgPicture.asset("assets/icons/arrow_up.svg")
                : SvgPicture.asset(
                    "assets/icons/arrow_down.svg",
                  ),
          ),
          SizedBox(width: 12.w),

          // Transaction details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                CustomText(
                  text: description,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: k7F7F7F,
                ),
              ],
            ),
          ),

          // Date, time, and amount
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: "$date  $time",
                fontSize: 13.sp,
                color: k7F7F7F,
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                text: amount,
                fontSize: 13.sp,
                color: isDebit ? kRed : Colors.green,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
