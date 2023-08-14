/*
* プロジェクト内に置いた画像ファイルを読み込み、表示することのできる
* Image.asset という widgete を使います。
* この widget は引数に読み込む画像ファイルのパス名を渡すことでそのパスに存在する画像ファイルを表示してくれます。
ローディング同様SizedBox.squareを使って、画像がサイズ固定された正方形の大きさになるように調整しています。
*/

import 'package:flutter/material.dart';

class AuthModalImage extends StatelessWidget {
  const AuthModalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 300,
      child: Image.asset("assets/image/globe.png"),
    );
  }
}
