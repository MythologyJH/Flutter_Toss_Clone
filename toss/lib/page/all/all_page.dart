import 'package:flutter/material.dart';

import 'material/appbar.dart';
import 'material/header.dart';
import 'material/loans.dart';
import 'material/new.dart';
import 'material/payment.dart';
import 'material/recent.dart';
import 'material/remittance.dart';

class AllPage extends StatefulWidget {

  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            AllAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AllHeader(),
                    AllRecent(),
                    AllNew(),
                    AllLoans(),
                    AllPayment(),
                    AllRemittance(),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
