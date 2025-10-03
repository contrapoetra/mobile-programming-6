import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Catalog', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.album, size: 100),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Echo of My Shadow', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('AURORA', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.favorite),
                      SizedBox(width: 16),
                    ],
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
