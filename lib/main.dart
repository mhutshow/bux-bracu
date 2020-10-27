import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(StarNet());
}

class StarNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'BRACU ONLINE',
      home : Star(),
    );
  }
}

class Star extends StatefulWidget {
  @override
  _StarState createState() => _StarState();
}

List <Container> pages=[
  Container(child : WebView(initialUrl: 'https://bux.bracu.ac.bd/courses/course-v1:buX+CSE350+2020_Fall/course/', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://bux.bracu.ac.bd/courses/course-v1:buX+BUS201+2020_Fall/course/', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://bux.bracu.ac.bd/courses/course-v1:buX+CSE470+2020_Fall/course/', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://bux.bracu.ac.bd/courses/course-v1:buX+BIO101+2020_Fall/course/', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://bux.bracu.ac.bd/courses/course-v1:buX+CSE471+2020_Fall/course/', javascriptMode: JavascriptMode.unrestricted,),),
  Container(color: Colors.white,child :  SafeArea(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Student Info',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: 400,
            child: Divider(
              color: Colors.green,
            ),
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://mhutshow.com/assets/images/c1.jpg'),

          ),
          Text('Mahedi Hasan',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
            ),

          ),

          Text('Semester : Fall20',style: TextStyle(
            letterSpacing: 2.5,
            color: Colors.blueGrey,
            fontSize: 18.0,
          ),),
          Text('CSE250 || BUS101 || CSE470 || CSE471 || BIO101',style: TextStyle(
            letterSpacing: 2.5,
            color: Colors.blueGrey,
            fontSize: 10,
          ),),
          SizedBox(
            width: 300,
            child: Divider(
              color: Colors.blueGrey,
            ),
          ),
          Text('Nearest Deadlines',style: TextStyle(
            letterSpacing: 2.5,
            color: Colors.blueGrey,
            fontSize: 18.0,
          ),),
          SizedBox(
            width: 200,
            child: Divider(
              color: Colors.blueGrey,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 40.0),
            color: Colors.blueGrey,
            child: ListTile(

              leading:  Icon(
                Icons.add_alert_outlined,
                color: Colors.blueGrey[900],
              ),
              title: Text('CSE350 : HW1 [29.10.20 || 11.59PM ]',style: TextStyle(color: Colors.blueGrey[900])),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0 , horizontal: 40.0),
            color: Colors.blueGrey,
            child:ListTile(
              leading:   Icon(
                Icons.add_alert_outlined,
                color:Colors.blueGrey[900],
              ),
              title: Text('CSE471 : Quiz L1,2 [30.10.20 || 6-11.59 PM]', style: TextStyle(color: Colors.blueGrey[900])),

            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 40.0),
            color: Colors.blueGrey,
            child: ListTile(

              leading:  Icon(
                Icons.add_alert_outlined,
                color: Colors.blueGrey[900],
              ),
              title: Text('CSE471 : Lab1HW [30.10.20 || 11.59PM ]',style: TextStyle(color: Colors.blueGrey[900])),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 40.0),
            color: Colors.blueGrey,
            child: ListTile(

              leading:  Icon(
                Icons.add_alert_outlined,
                color: Colors.blueGrey[900],
              ),
              title: Text('CSE350 : HW1 [05.11.20 || 11.30PM ]',style: TextStyle(color: Colors.blueGrey[900])),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 40.0),
            color: Colors.blueGrey,
            child: ListTile(

              leading:  Icon(
                Icons.add_alert_outlined,
                color: Colors.blueGrey[900],
              ),
              title: Text('CSE470 : Quiz L1,2,3 [7.11.20 || 5,00 PM]',style: TextStyle(color: Colors.blueGrey[900])),

            ),
          ),

        ],
      )
  )
  ),


];
int i=5;
Container page() {
  if (i == 0) {
    return pages[0];
  }
  if (i == 1) {
    return pages[1];
  }
  if (i == 2) {
    return pages[2];
  }
  if (i == 3) {
    return pages[3];
  }
  if (i == 4) {
    return pages[4];
  }
  else{
    return pages[5];
  }
}
class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BRACU Online'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: page(),
      bottomNavigationBar: CurvedNavigationBar(

        backgroundColor: Colors.green,
        height: 65,
        index: 5,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        items: <Widget>[
          Icon(Icons.menu_book, size: 18),
          Icon(Icons.menu_book, size: 18),
          Icon(Icons.menu_book, size: 18),
          Icon(Icons.menu_book, size: 18),
          Icon(Icons.menu_book, size: 18, ),
          Icon(Icons.eco, size: 18, ),
        ],
        onTap: (index) {
          setState(() {
            i=index;
            print('$i');
          });
        },
      ),
    );
  }
}





