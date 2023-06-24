import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';

class Article {
  final String title;
  final String text;
  final DateTime date;
  final String imageUrl;

  Article({
    required this.title,
    required this.text,
    required this.date,
    required this.imageUrl,
  });
}

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showArticleDetail(Article article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticleDetailScreen(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Articles'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Health'),
            Tab(text: 'Sport'),
            Tab(text: 'Food'),
            Tab(text: 'Important'),
            Tab(text: 'Instructions'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildArticleList('Health'),
          buildArticleList('Sport'),
          buildArticleList('Food'),
          buildArticleList('Important'),
          buildArticleList('Instructions'),
        ],
      ),
    );
  }

  Widget buildArticleList(String category) {
    List<Article> articles = [];
    if (category == 'Health') {
      articles = [
        Article(
          title: 'Health Article 1',
          text: 'This is the text of health article 1.',
          date: DateTime(2023, 6, 1),
          imageUrl: 'https://overproof.com/wp-content/uploads/2020/04/nhia-moua-F4cJtI7HCMw-unsplash-scaled.jpg',
        ),
        Article(
          title: 'Health Article 2',
          text: 'This is the text of health article 2.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://bd-craft-assets-prod.s3.amazonaws.com/assets/_1200x630_crop_center-center_82_none/BioDigital-Human-Body-Platform.jpg?mtime=1663346774',
        ),
        Article(
          title: 'Health Article 3',
          text: 'This is the text of health article 3.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://science.olympiadsuccess.com/assets/images/science_square/science_topic_10.jpg',
        ),
      ];
    } else if (category == 'Sport') {
      articles = [
        Article(
          title: 'Sport Article 1',
          text: 'This is the text of sport article 1.',
          date: DateTime(2023, 6, 1),
          imageUrl: 'https://thumbs.dreamstime.com/b/online-workout-coach-remotely-home-exercises-covid-lockdown-online-workout-coach-remotely-home-exercises-217821641.jpg',
        ),
        Article(
          title: 'Sport Article 2',
          text: 'This is the text of sport article 2.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://www.edgehill.ac.uk/wp-content/uploads/2022/03/sports-therapy-bsc.jpg',
        ),
        Article(
          title: 'Sport Article 3',
          text: 'This is the text of sport article 3.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://images.everydayhealth.com/images/healthy-living/fitness/choosing-the-right-workout-clothes-01-722x406.jpg',
        ),
      ];
    } else if (category == 'Food') {
      articles = [
        Article(
          title: 'Food Article 1',
          text: 'This is the text of food article 1.',
          date: DateTime(2023, 6, 1),
          imageUrl: 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528',
        ),
        Article(
          title: 'Food Article 2',
          text: 'This is the text of food article 2.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://www.starhealth.in/blog/wp-content/uploads/2022/01/NUTRITION-copy.jpg',
        ),
        Article(
          title: 'Food Article 3',
          text: 'This is the text of food article 3.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://englishtalent.edu.vn/wp-content/uploads/2023/05/Weight-Loss-Tips-5-Important-Things-to-Keep-in-Mind.jpg',
        ),
      ];
    }else if (category == 'Important') {
      articles = [
        Article(
          title: 'Important Article 1',
          text: 'This is the text of Important article 1.',
          date: DateTime(2023, 6, 1),
          imageUrl: 'https://img.freepik.com/free-vector/flat-mental-health-facebook-post_23-2149044577.jpg?w=2000',
        ),
        Article(
          title: 'Important Article 2',
          text: 'This is the text of Important article 2.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://www.srisriholistichospitals.com/wp-content/uploads/2020/04/Safety-Measures-to-Prevent-From-Coronavirus-1.jpg',
        ),
        Article(
          title: 'Important Article 3',
          text: 'This is the text of Important article 3.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://overproof.com/wp-content/uploads/2020/04/nhia-moua-F4cJtI7HCMw-unsplash-scaled.jpg',
        ),
      ];
    }else if (category == 'Instructions') {
      articles = [
        Article(
          title: 'Instructions Article 1',
          text: 'This is the text of Instructions article 1.',
          date: DateTime(2023, 6, 1),
          imageUrl: 'https://media.istockphoto.com/id/1203345866/vector/sequence-of-designs-showing-how-to-brush-teeth.jpg?s=612x612&w=0&k=20&c=UNOrLH6idUhuts2FVbpqVMUO1KsrlY9RMc58rKVFGcg=',
        ),
        Article(
          title: 'Instructions Article 2',
          text: 'This is the text of Instructions article 2.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://img.freepik.com/premium-vector/online-doctor-concept-illustration-with-female-patient-consulting-doctor-using-laptop-computer_253672-229.jpg?w=360',
        ),
        Article(
          title: 'Instructions Article 3',
          text: 'This is the text of Instructions article 3.',
          date: DateTime(2023, 6, 2),
          imageUrl: 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528',
        ),
      ];
    }
    // Add more categories and articles

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: () {
              _showArticleDetail(article);
            },
            child: Card(
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: CachedNetworkImage(
                      imageUrl: article.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          article.text,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today, size: 14),
                            const SizedBox(width: 4),
                            Text(
                              '${article.date.day}/${article.date.month}/${article.date.year}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: article.imageUrl,
              height: 200,
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            const SizedBox(height: 16),
            Text(
              article.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Published on: ${article.date.day}/${article.date.month}/${article.date.year}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Article App',
    home: ArticlesScreen(),
  ));
}
