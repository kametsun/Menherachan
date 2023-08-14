/* ローディングの円が回る部品
 * CircularProgressIndicatorをつかう
 * 
 * SizedBox.squareというコンストラクタを使って正方形のSizedBoxを生成する
 * その中にCircularProgressIndicatorを配置
 */

import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    this.dimension = 20,
    this.color = Colors.white,
  });

  final double dimension;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: color,
      ),
    );
  }
}
