import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'profile_page.dart';

class ListPage extends StatelessWidget {
  final String username;

  ListPage({required this.username});

  final List<Map<String, String>> dummyData = [
    {'title': '123220009', 'description': 'UKT ELIT FASILITAS SULIT'},
    {'title': '123220009', 'description': 'Engga Cuy, Sekarang udah ada lift.'},
    {'title': '123220009', 'description': 'Liftnya aja suka mt WKWKWKWK'},
    {'title': '123220009', 'description': 'Kok kalian punya lift?'},
    {'title': '123220009', 'description': 'AAAA MAU MOKEL, JOGJA GERAH COY'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Civitas'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(username: username)),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(dummyData[index]['title']!),
              subtitle: Text(dummyData[index]['description']!),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(postTitle: dummyData[index]['title']!),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
