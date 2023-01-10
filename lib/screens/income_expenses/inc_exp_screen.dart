import 'package:flutter/material.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/screens/drawer.dart';
import 'package:my_gym_manager/screens/income_expenses/view_expense.dart';
import 'package:my_gym_manager/screens/income_expenses/view_income.dart';
import 'package:my_gym_manager/widgets/custom_app_bar.dart';
import 'package:my_gym_manager/widgets/custom_card_re.dart';

import 'add_expense.dart';
import 'add_income.dart';

class IncExpScreen extends StatefulWidget {
  @override
  _IncExpScreenState createState() => _IncExpScreenState();
}

class _IncExpScreenState extends State<IncExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar('Revenue & Expenses'),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomCardRE(
                  imagePath:
                      'assets/images/increase_presentation_Profit_growth-512.png',
                  type: 'Incomes',
                  view: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewIncome(),
                      ),
                    ),
                  },
                  add: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddIncome(),
                      ),
                    ),
                  },
                ),
                CustomCardRE(
                  imagePath:
                      'assets/images/decrease_presentation_down_loss-512.png',
                  type: 'Expenses',
                  view: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewExpense(),
                      ),
                    ),
                  },
                  add: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddExpense(),
                      ),
                    ),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
