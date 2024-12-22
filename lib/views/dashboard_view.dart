import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_size.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/layout/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/layout/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/layout/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/layout/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: MediaQuery.sizeOf(context).width < AppSizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < AppSizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
