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
                  selectedItemColor: AppColor.buttonColor,
                  backgroundColor: Color(0xFFFFF8F8)  ,
                  unselectedItemColor: AppColor.textGrey,
                  onTap: (value) {
                    provider.navIndextChange(value);
                    provider.pageManage(value);
                  },
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppSvg.homeIcon2),
                      label: 'Home',
                      icon: SvgPicture.asset(AppSvg.homeIcon),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppSvg.heartIcon2),
                      label: 'Appointments',
                      icon: SvgPicture.asset(AppSvg.heartIcon),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppSvg.chatIcon2),
                      label: 'Wallet',
                      icon: SvgPicture.asset(AppSvg.chatIcon),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppSvg.profileIcon2),
                      label: 'Setting',
                      icon: SvgPicture.asset(AppSvg.profileIcon),
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
