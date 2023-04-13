import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: 1,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Profile Settings",style: TextStyle(fontSize: 16),),
                  ),
                  Container(height: 1,color: Colors.black,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Password",style: TextStyle(fontSize: 16),),
                  ),
                  Container(height: 1,color: Colors.black,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Feedback",style: TextStyle(fontSize: 16),),
                  ),
                  Container(height: 1,color: Colors.black,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Rate us",style: TextStyle(fontSize: 16),),
                  ),
                ],
              ),
            ),
            Container(height: 1,color: Colors.black,),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: 1,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Terms of Use",style: TextStyle(fontSize: 16),),
                  ),
                  Container(height: 1,color: Colors.black,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Privacy policy",style: TextStyle(fontSize: 16),),
                  ),
                ],
              ),
            ),
            Container(height: 1,color: Colors.black,),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
