
import 'package:deneme_1111/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: AnimatedContainer(
        margin:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: AppColors.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(.1),
              offset: const Offset(0, 4),
              blurRadius: 10
            )
          ]
        ),
        duration: const Duration(milliseconds: 600),
        child: ListTile(
      
      
      
           leading: GestureDetector(
            onTap:() => (){
              
            },
             child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
                border: 
                Border.all(color: Colors.grey,width: .8)
              ),
              child: const Icon(
                Icons.check,
                color:Colors.white,
                ),
             ),
           ), 
       
          title: const Padding(
            padding: EdgeInsets.only(bottom:5,top:3),
            child: Text("Done",
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              //decoration: TextDecoration.linethrough,
              ),
            ),
          ),
        
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                // decoration: TextDecoration.linethrough,
              ),
            ),
      
      
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(bottom:10,top:10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                       Text(
                      "SubDate",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                       ),
                  ],
                ),
              ),
            )
          ],
        ),
        )),
    );
  }
}
