import 'package:flutter/material.dart';
import 'package:tokuapp/components/category_item.dart';

import 'package:tokuapp/ui/colors/colors_page.dart';
import 'package:tokuapp/ui/family/family_members.dart';
import 'package:tokuapp/ui/numbers/numbers_page.dart';
import 'package:tokuapp/ui/pharse/pharsespage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor:  const Color(0xffFEF6DB),
          title: const Text('Toku APP',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                  return   ColorsPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
        SizedBox(
              height: 150,
            ),
      
      Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,  
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),  
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8), 
        child: Image.asset(
          "assets/images/numbers/FreePhalstain.jpg",
          width: 200,
          height: 250,
          fit: BoxFit.fill,
        ),
      ),
    ),
      

      Text("Free Palestine",
      style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
      
          ],
        ),
      ),
    );
  }
}
