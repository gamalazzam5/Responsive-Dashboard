import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

import '../widgets/Dashboard_mobile_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width<800? AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton( icon:Icon(Icons.menu,),onPressed: (){
              Scaffold.of(context).openDrawer();
            },);
          }
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
      ):null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
