/// このコード以外のリソースを使いたいとき import 'リソースのパス'　と書きます。
/// material.dart の中には UI を作るための部品が入っていると思ってください。
import 'package:flutter/material.dart';

/// flutterではまずmain.dart　の main() が実行されます。
/// これは関数と呼ばれるものですが、関数については次のチャプターで詳しく解説します。
void main() {
  /// runApp(最初に表示させたいUI) と書くことでそのUIが画面に表示されます。
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AppBar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget
class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 上揃えにする
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1510946043718160386/mPJ6v_Xf_400x400.jpg'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('sample-flutter'),
                  SizedBox(width: 8),
                  Text('2022/11/27'),
                ],
              ),
              SizedBox(height: 4),
              Text('hogehoge'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
