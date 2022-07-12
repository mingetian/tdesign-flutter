import 'package:flutter/material.dart';
import 'package:tdesign_flutter/td_export.dart';

import '../example_base.dart';

class TdImagePage extends StatefulWidget {
  const TdImagePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => TdImageState();
}

class TdImageState extends State<TdImagePage> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 4.0).animate(animationController);
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String loadingUrl = 'https://images7.alphacoders.com/691/thumbbig-691004.webp';
    String url = 'http://www.zmaomao.com/uploads/201204/11-20120416014B36.jpg';
    return ExampleWidget(
      title: 'TDImage',
      children: [
        ExampleItem(
            desc: '状态-加载默认',
            builder: (_) {
              return TDImage(
                loadingUrl,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '状态-加载自定义',
            builder: (_) {
              return TDImage(
                loadingUrl,
                loadingWidget: RotationTransition(
                  turns: animation,
                  alignment: Alignment.center,
                  child: const Icon(TDIcons.loading, size: 22,)
                ),
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '状态-失败默认',
            builder: (_) {
              return const TDImage(
                'error',
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '状态-失败自定义',
            builder: (_) {
              return TDImage(
                'error',
                errorWidget: TDText(
                  '加载失败',
                  forceVerticalCenter: true,
                  font: TDTheme.of(context).fontXXS,
                  fontWeight: FontWeight.w500,
                  textColor: TDTheme
                      .of(context)
                      .fontGyColor3,
                ),
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '类型-裁剪',
            builder: (_) {
              return TDImage(
                url,
                type: TDImageType.clip,
              );
            }
        ),
        ExampleItem(
            desc: '类型-适应高',
            builder: (_) {
              return TDImage(
                url,
                width: 89,
                height: 72,
                type: TDImageType.fitHeight,
              );
            }
        ),
        ExampleItem(
            desc: '类型-拉伸',
            builder: (_) {
              return TDImage(
                url,
                width: 134,
                height: 72,
                type: TDImageType.stretch,
              );
            }
        ),
        ExampleItem(
            desc: '类型-方形',
            builder: (_) {
              return TDImage(
                url,
                type: TDImageType.square,
              );
            }
        ),
        ExampleItem(
            desc: '类型-圆角方形',
            builder: (_) {
              return TDImage(
                url,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '类型-圆形',
            builder: (_) {
              return TDImage(
                url,
                type: TDImageType.circle,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片120',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.XL,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片72',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.L,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片56',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.M,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片48',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.SM,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片32',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.S,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        ExampleItem(
            desc: '规格-图片24',
            builder: (_) {
              return TDImage(
                url,
                size: TDImageSize.XS,
                type: TDImageType.roundedSquare,
              );
            }
        ),
        
      ],
    );
  }
}


