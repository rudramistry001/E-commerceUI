import 'package:code_pathshala/custom%20widgets/custom_drawer.dart';
import 'package:code_pathshala/custom%20widgets/custom_text_field.dart';
import 'package:code_pathshala/custom%20widgets/subject_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> subjects = ['JavaScript', 'C++', 'C', 'WEB DEV'];

  final List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        // title: const Text("Dashboard Screen"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.verticalSpace,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome back",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rudra H Mistry",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    SizedBox(
                      height: 100.sp,
                      width: 390.sp,
                      child: const CustomStyledTextField(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        hintText: "Search...",
                        labelText: "Search",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Video Lectures",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subjects.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return SubjectCard(
                            subject: subjects[index], color: colors[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Class Notes",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subjects.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return SubjectCard(
                            subject: subjects[index], color: colors[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Practice Questions",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subjects.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return SubjectCard(
                            subject: subjects[index], color: colors[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // CODE FOR DRAWER
      drawer: const CustomDrawer(),
    );
  }
}
