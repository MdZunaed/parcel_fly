import 'package:flutter/material.dart';
import 'package:parcel_fly/constants/app_colors.dart';
import 'package:parcel_fly/constants/app_text_style.dart';
import 'package:parcel_fly/constants/assets_path.dart';
import 'package:parcel_fly/widgets/child_button.dart';
import 'package:parcel_fly/widgets/overview_card.dart';
import 'package:parcel_fly/widgets/pending_parcel_card.dart';
import 'package:parcel_fly/widgets/total_earning_option.dart';

import '../constants/mq.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(children: [
            Container(height: mq.height * 0.26, color: AppColors.bg),
            Expanded(child: Container(color: Colors.white))
          ]),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: mq.height * 0.04),
                  appbar(),
                  SizedBox(height: mq.height * 0.04),

                  ////////// Total Earning ////////////////

                  totalEarningContainer(),
                  SizedBox(height: mq.height * 0.025),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Overview", style: bodyTitle),
                      ChildButton(
                        child: Row(
                          children: [
                            Text("Monthly", style: bodyText),
                            Icon(Icons.keyboard_arrow_down, color: AppColors.text),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: mq.height * 0.020),

                  ////////// overviews ////////////////

                  pendingAndDelivered(),
                  const SizedBox(height: 10),
                  partialAndReturn(),
                  SizedBox(height: mq.height * 0.020),

                  ////////// pending Parcels ////////////////

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pending Parcels", style: bodyTitle),
                      ChildButton(
                        child: Text("View All", style: bodyText),
                      ),
                    ],
                  ),
                  SizedBox(height: mq.height * 0.01),
                  const PendingParcelCard(
                      img: appLogo,
                      title: "Exclusive Cotton Fiber Head Pillow",
                      subTitle: "Size: 34”, Weight: 2.5K",
                      price: "1254.98"),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row appbar() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(radius: 28, backgroundColor: Colors.grey),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jenny Wilson", style: bodyTitle.copyWith(color: const Color(0xff21C781))),
                    Text("Delivery Man", style: bodySubText.copyWith(color: AppColors.white)),
                  ],
                ),
                Image.asset(bell),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row partialAndReturn() {
    return const Row(
      children: [
        OverviewCard(
          color: AppColors.purple,
          title: "Partial Delivered parcels",
          amount: "45",
          img: partial,
          line: purpleLine,
        ),
        SizedBox(width: 10),
        OverviewCard(
            color: AppColors.yellow, title: "Return Parcels", amount: "29", img: returned, line: yellowLine),
      ],
    );
  }

  Row pendingAndDelivered() {
    return const Row(
      children: [
        OverviewCard(
            color: AppColors.blue, title: "Pending Parcels", amount: "126", img: pending, line: blueLine),
        SizedBox(width: 10),
        OverviewCard(
          color: AppColors.green,
          title: "Delivered parcels",
          amount: "504",
          img: delivered,
          line: greenLine,
        ),
      ],
    );
  }

  Container totalEarningContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(offset: Offset(0, 10), color: Colors.black26, spreadRadius: 0, blurRadius: 15)
          ]),
      child: const Column(
        children: [
          Text("Total Earning", style: bodyTitle),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalEarningOption(img: navPayment, text: "Earning", amount: "625.48"),
              TotalEarningOption(img: collection, text: "Collection", amount: "6225.48"),
              TotalEarningOption(img: balance, text: "Balance", amount: "1554.48"),
            ],
          )
        ],
      ),
    );
  }
}
