import 'package:consultant_app/screens/home/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constant/app_assets.dart';
import '../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (context, value, child) {
            return Visibility(child: value.pageManage(value.navIndex));
          },
        ),
        bottomNavigationBar:
        Consumer<HomeProvider>(builder: (context, provider, child) {
          return SizedBox(
            height: width*0.18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(height: 0.6,thickness: 0.6,color: Colors.grey,),
                BottomNavigationBar(
                  elevation: 2,
                  currentIndex: provider.navIndex,
                  selectedItemColor: AppColor.skyBlueColor,
                  backgroundColor: Color(0xFFFFF8F8)  ,
                  unselectedItemColor: AppColor.textGrey,
                  onTap: (value) {
                    provider.navIndextChange(value);
                    provider.pageManage(value);
                  },
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon:  Icon(Icons.home_outlined,color: AppColor.skyBlueColor,),
                      label: 'Home',
                      icon: Icon(Icons.home_outlined),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Icon(Icons.calendar_month,color: AppColor.skyBlueColor,),
                      label: 'Appointments',
                      icon:  Icon(Icons.calendar_month)
                    ),
                    BottomNavigationBarItem(
                      activeIcon:Icon(Icons.account_balance_wallet_outlined,color: AppColor.skyBlueColor,),
                      label: 'Wallet',
                      icon:  Icon(Icons.account_balance_wallet_outlined)
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Icon(Icons.settings,color: AppColor.skyBlueColor,),
                      label: 'Setting',
                      icon: Icon(Icons.settings)
                    ),

                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
