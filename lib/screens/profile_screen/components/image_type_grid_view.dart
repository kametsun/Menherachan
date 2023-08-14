import 'package:almost_zenly/types/image_type.dart';
import 'package:flutter/material.dart';

class ImageTypeGridView extends StatelessWidget {
  const ImageTypeGridView({
    super.key,
    required this.selectedImageType,
    required this.onTap,
  });

  //現在選択されているimageType
  final ImageType selectedImageType;
  //ImageTypeを返すコールバック関数
  final ValueChanged<ImageType> onTap;

  @override
  Widget build(BuildContext context) {
    //enumの定数を配列で返すvalues
    const images = ImageType.values;

    //GridViewの定義
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: [
        for (final imageType in images)
          GestureDetector(
            onTap: () => onTap(imageType),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  //PaddingとbackgroundColorでボーダーを演習
                  backgroundColor: imageType == selectedImageType
                      ? Colors.blue
                      : Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      imageType.path,
                    ),
                  )),
            ),
          )
      ],
    );
  }
}

/**
 * GridView.count
 * x軸方向に配置するアイテム数を指定するkとができるコンストラクタ
 * crossAxisCountというフィールドに横に並べるアイテム数を指定できる
 * 
 * shrinkWrap
 * 子要素の大きさに合わせてなるべく小さくなるように設定するshrinkWrapフィールドをtureにする
 * GridView　Widgetがデフォルトでは可能な限り大きくなろうとするため
 * COlumn 内に配置するとエラーを起こすから
 * 
 * 
 */

