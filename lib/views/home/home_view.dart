
// ignore_for_file: deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:deneme_1111/extensions/space_exs.dart';
import 'package:deneme_1111/utils/app_colors.dart';
import 'package:deneme_1111/utils/app_str.dart';
import 'package:deneme_1111/utils/constants.dart';
import 'package:deneme_1111/views/home/components/fab.dart';
import 'package:deneme_1111/views/home/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<int> testing=[];
  @override
  Widget build(BuildContext context){
  TextTheme textTheme=Theme.of(context).textTheme;


    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: const Fab(),

      body: _buildHomeBody(textTheme),
    );
  }
  Widget _buildHomeBody(TextTheme textTheme){
    return SizedBox(
        width: double.infinity,
        height:double.infinity,
        child: Column(
          children: [



            Container(
              margin: const EdgeInsets.only(top:60),
              width: double.infinity,
              height:100,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                  value: 1 / 3,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(
                    AppColors.primaryColor,
                  ),
                  ),
                ),
               
               25.w,
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStr.mainTitle,
                    style:textTheme.displayLarge,
                  ),
                  3.h,
                  Text(
                    "1 of 3 task",
                    style: textTheme.titleMedium,
                  ),
                ],
               )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:10),
              child: Divider(
                thickness: 2,
                indent:100,
              ),
            ),
          
          SizedBox(
            width: double.infinity,
            height: 745,
            child: testing.isNotEmpty 
            
            
            
            ?ListView.builder(
              itemCount: testing.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Dismissible(
                  direction: DismissDirection.horizontal,
                  onDismissed: (_){

                  },
                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.delete_outline,
                        color: Colors.grey,
                      ),
                      8.w,
                      const Text(AppStr.deletedTask,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      ),
                    ],
                  ),
                  key: Key(
                    index.toString(),
                  ),
                  child: const TaskWidget());
              }
            )
            :Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeIn(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Lottie.asset(lottieURL,
                    animate:testing.isNotEmpty? false:true,
                    ),
                  ),
                ),
                FadeInUp(
                  from:30,
                  child: const Text(
                    AppStr.doneAllTask,
                  ),
                )
              ],
            )
          ),
          
          ],
        ),
      );
  }
}
