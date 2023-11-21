import 'package:flutter/material.dart';
import 'package:rifqi_024_latihanresponsi/reports/report_page.dart';
import 'blogs/blog_page.dart';
import 'news/news_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPACE FLIGHT NEWS'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsList()));
              },
              child: Card(
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/15/09/33/news-636978_960_720.jpg'),
                            radius: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 3.0, bottom: 3.0, right: 15.0),
                        child: Text(
                          'NEWS',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0,top: 3.0, bottom: 3.0,right: 15.0),
                        child: Text(
                          'Get an overview of the latest Spaceflight news,from various source! Easily link your users to the right websites',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogList()));
              },
              child: Card(
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/toy-bricks-table-with-word-blog_144627-47465.jpg'),
                            radius: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 3.0, bottom: 3.0, right: 15.0),
                        child: Text(
                          'BLOGS',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0,top: 3.0, bottom: 3.0,right: 15.0),
                        child: Text(
                          'Blogs often provide a more detailed overview of launches and missions. A must-have for the serious spaceflight enthusiast',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReportList()));
              },
              child: Card(
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://www.fisdom.com/wp-content/uploads/2021/11/Report.webp'),
                            radius: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 3.0, bottom: 3.0, right: 15.0),
                        child: Text(
                          'REPORTS',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0,top: 3.0, bottom: 3.0,right: 15.0),
                        child: Text(
                          'Space Stations and other missions often publish their data. With SNAPi, you can include it in your app as well!',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}