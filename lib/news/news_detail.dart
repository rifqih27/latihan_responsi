import 'package:flutter/material.dart';
import 'package:rifqi_024_latihanresponsi/model_data.dart';
import 'news_datasource.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetail extends StatefulWidget {
  final int idNews;
  const NewsDetail({super.key, required this.idNews});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  late Results detailNews;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final result = await ApiDataSource.instance.getDetailNews(widget.idNews);
      setState(() {
        detailNews = Results.fromJson(result);
      });
    } catch (error) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEWS DETAIL'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              detailNews.imageUrl!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              '${detailNews.title!}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              detailNews.publishedAt!,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              detailNews.summary!,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          launchURL(detailNews.url);
        },
        label: const Text(
          'See More',
          style: TextStyle(color: Colors.black),
        ),
        icon: const Icon(Icons.content_paste_search_rounded, color: Colors.black),
        backgroundColor: const Color(0xFFECDDFF),
      ),
    );
  }

  Future<void> launchURL(String? url) async {
    if (url != null && await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error
    }
  }
}